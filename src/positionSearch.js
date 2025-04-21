const fs = require("fs");
const scrapper = require("./positionScrapper");
const keywords = require("./data/keywords");

let companies = "";
let positions = "";
let jobUrls = "const jobUrls = [\n";

let results = [];

const PRINT_ONLY = true;

console.log("Starting the position scrapper");

runSequentially();

async function runSequentially() {
  const offsets = [0, 10, 20, 30, 40, 50];

  for (const keyword of keywords) {
    for (const offset of offsets) {
      try {
        await executeScrapper(offset, keyword);
      } catch (error) {
        console.error(`Error with start = ${offset}: `, error);
        process.exit(1);
      }
    }
  }

  // order results by timeDiffInMinutes from smallest to largest
  results.sort((a, b) => a.timeDiffInMinutes - b.timeDiffInMinutes);
  // remove duplicates from results
  const uniqueResults = Array.from(
    new Set(results.map((a) => JSON.stringify(a)))
  ).map((e) => JSON.parse(e));

  //filter only the results that have timeDiffInMinutes smaller than  are less than 10080 (Last week)
  const filteredResults = uniqueResults.filter(
    (item) => item.timeDiffInMinutes < 60 * 24 * 7
  );
  if (PRINT_ONLY) {
    console.log(JSON.stringify(filteredResults, null, 2));
  } else {
    // This is a stored procedure that refreshes the id of the companies and positions tables
    positions += "CALL `newNova`.`id_refresher`();\n";

    jobUrls += "];\n\nmodule.exports = jobUrls;";

    fs.writeFile(`./output/${dateStr}-companies.csv`, companies, (err) => {
      if (err) {
        console.error(err);
        return;
      }
      console.log("Companies file has been created");
    });

    fs.writeFile(`./output/${dateStr}-positions.csv`, positions, (err) => {
      if (err) {
        console.error(err);
        return;
      }
      console.log("Positions file has been created");
    });

    fs.writeFile(`./output/${dateStr}-jobUrls.js`, jobUrls, (err) => {
      if (err) {
        console.error(err);
        return;
      }
      console.log("jobUrls file has been created");
    });
  }
}

async function executeScrapper(offset, keyword) {
  return new Promise((resolve, reject) => {
    scrapper.query(offset, keyword).then((response) => {
      if (response) {
        const promises = response.map((mock) => {
          const positionPromise = new Promise((resolve, reject) => {
            results.push(mock);
            companies += `INSERT IGNORE INTO newNova.company (name, logo_url) VALUES ('${mock.company}', '${mock.companyLogo}');\n`;
            positions += `INSERT IGNORE INTO newNova.position (company_id, name, post_date, url,location) VALUES ((SELECT id FROM newNova.company WHERE name = '${mock.company}'), '${mock.position}', '${mock.date}', '${mock.jobUrl}', '${mock.location}');\n`;
            jobUrls += `"${mock.jobUrl}",\n`;

            resolve();
          });

          return Promise.all([positionPromise]);
        });

        Promise.all(promises)
          .then(() => {
            resolve();
          })
          .catch((error) => {
            console.error("Error:", error);
            reject(error);
          });
      }
    });
  });
}

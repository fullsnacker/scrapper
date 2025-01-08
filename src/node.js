const scrapper = require("./scrapper");
const colors = require("colors");

runSequentially();

async function runSequentially() {
  const starts = [0, 10, 20, 30, 40, 50];
  const keyword = "node";
  const searchDate = new Date().toLocaleDateString("es-AR");

  console.log(
    `${searchDate} - Searching positions with keyword = '${keyword}'... \n`
  );
  console.log("Company,Position,Keyword,Url");

  for (const start of starts) {
    try {
      await executeScrapper(start, keyword);
    } catch (error) {
      console.error(`Error with start = ${start}: `, error);
      process.exit(1);
    }
  }
}

async function executeScrapper(start, keyword) {
  return new Promise((resolve, reject) => {
    scrapper.query(start).then((response) => {
      if (response) {
        const promises = response.map((mock) => {
          const positionPromise = new Promise((resolve, reject) => {
            console.log(
              colors.green(mock.company) +
                "," +
                mock.position +
                "," +
                keyword +
                "," +
                mock.jobUrl
            );
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

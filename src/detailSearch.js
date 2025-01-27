const detailScrapper = require("./detailScrapper");
const jobUrls = require("../jobUrls");

const fs = require("fs");

let urlResults = "";
let count = 0;

console.log("Starting the scrapper");

runSequentially();

async function runSequentially() {
  for (const jobUrl of jobUrls) {
    try {
      count++;
      console.log(`Processing job ${count}`);
      await executeScrapper(jobUrl);
    } catch (error) {
      console.error(`Error with url = ${jobUrl}: `, error);
      process.exit(1);
    }
  }

  fs.writeFile("jobUrls.csv", urlResults, (err) => {
    if (err) {
      console.error(err);
      return;
    }
    console.log("Urls file has been created");
  });
}

async function executeScrapper(jobUrl) {
  return new Promise((resolve, reject) => {
    detailScrapper
      .query(jobUrl)
      .catch((error) => {
        console.log("Error: ", error);
      })
      .then((response) => {
        if (response) {
          let text = "";
          const promises = new Promise((resolve, reject) => {
            for (let i = 0; i < response.length - 1; i++) {
              if (true) {
                text += response[i];
              }
            }

            const start = text.indexOf("Denunciar este empleo");
            const end = text.indexOf("Show more");

            if (start !== -1 && end !== -1 && start < end) {
              let result = text.substring(start + 200, end).trim();
              result = result.replace(/'/g, "''");
              result = result.replace(/\n/g, " ");
              urlResults += `UPDATE newNova.position SET detail = '${result}' WHERE (url = '${jobUrl}');\n`;
            } else {
              console.log(
                "No se encontraron las palabras 'cerrar' o 'abrir' en el orden esperado."
              );
            }
            resolve();
          }).then(() => {
            resolve();
          });
        }
      });
  });
}

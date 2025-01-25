const cheerio = require("cheerio");
const axios = require("axios");
const axiosRetry = require("axios-retry");
const randomUseragent = require("random-useragent");

axiosRetry(axios, {
  retries: 5,
  retryDelay: (retryCount) => {
    return retryCount * 2000;
  },
  retryCondition: (error) => {
    return error.response.status === 429;
  },
});

module.exports.query = (jobUrl) => getJobs(jobUrl);
async function getJobs(jobUrl) {
  try {
    const userAgent = randomUseragent.getRandom();
    const { data } = await axios.get(jobUrl, {
      headers: {
        "User-Agent": userAgent,
        Accept:
          "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8",
        "Accept-Language": "en-US,en;q=0.9",
        "Accept-Encoding": "gzip, deflate, br",
        Connection: "keep-alive",
        "Upgrade-Insecure-Requests": "1",
      },
    });
    const $ = cheerio.load(data);
    let allJobs = parseJobList(data);
    return allJobs;
  } catch (error) {
    console.error("error");
  }
}

function parseJobList(jobData) {
  const $ = cheerio.load(jobData);
  const jobs = $(".details").text().toString();
  return jobs;
}

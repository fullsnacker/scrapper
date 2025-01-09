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

module.exports.query = (offset) => getJobs(offset);
async function getJobs(offset) {
  try {
    const myURL =
      "https://www.linkedin.com/jobs-guest/jobs/api/seeMoreJobPostings/search?keywords=react&location=Argentina&f_TPR=r86400&start=" +
      offset +
      "&sortBy=DD";
    const userAgent = randomUseragent.getRandom();
    const { data } = await axios.get(myURL, {
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
    // console.log("Found " + allJobs.length + " positions\n");
    return allJobs;
  } catch (error) {
    console.error("error");
  }
}

function parseJobList(jobData) {
  const $ = cheerio.load(jobData);
  const jobs = $("li");
  const jobObjects = jobs
    .map((index, element) => {
      const job = $(element);
      const position = job.find(".base-search-card__title").text().trim() || "";
      const company =
        job.find(".base-search-card__subtitle").text().trim() || "";
      const location =
        job.find(".job-search-card__location").text().trim() || "";
      const date = job.find("time").attr("datetime") || "";
      const salary =
        job
          .find(".job-search-card__salary-info")
          .text()
          .trim()
          .replace(/\n/g, "")
          .replaceAll(" ", "") || "";
      const jobUrl = job.find(".base-card__full-link").attr("href") || "";
      const companyLogo =
        job.find(".artdeco-entity-image").attr("data-delayed-url") || "";
      const agoTime =
        job.find(".job-search-card__listdate").text().trim() || "";
      return {
        position: position,
        company: company,
        companyLogo: companyLogo,
        location: location,
        date: date,
        agoTime: agoTime,
        salary: salary,
        jobUrl: jobUrl,
      };
    })
    .get();

  return jobObjects;
}

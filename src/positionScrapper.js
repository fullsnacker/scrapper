const cheerio = require("cheerio");
const axios = require("axios");
const axiosRetry = require("axios-retry");
const randomUseragent = require("random-useragent");
const keywords = require("./data/keywords");

axiosRetry(axios, {
  retries: 5,
  retryDelay: (retryCount) => {
    return retryCount * 2000;
  },
  retryCondition: (error) => {
    return error.response.status === 429;
  },
});

const formatter = new Intl.DateTimeFormat("en-US", {
  timeZone: "America/Argentina/Buenos_Aires",
  year: "numeric",
  month: "2-digit",
  day: "2-digit",
  hour: "2-digit",
  minute: "2-digit",
  second: "2-digit",
});
const urlBase =
  "https://www.linkedin.com/jobs-guest/jobs/api/seeMoreJobPostings/search?keywords=react&location=Argentina&f_TPR=r86400&start=00&sortBy=DD";
module.exports.query = (offset, keyword) => getJobs(offset, keyword);
async function getJobs(offset, keyword) {
  try {
    console.log(urlBase);

    const myURL =
      "https://www.linkedin.com/jobs-guest/jobs/api/seeMoreJobPostings/search?keywords=" +
      keyword +
      "&location=Argentina&f_TPR=r86400&start=" +
      offset +
      "&sortBy=DD";
    console.log(myURL);
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
    let allJobs = parseJobList(data, offset, keyword);
    return allJobs;
  } catch (error) {
    console.error(error);
  }
}

function parseJobList(jobData, offset, keyword) {
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
      const dateAgo = job.find("time").text().trim() || "";
      const jobUrl = job.find(".base-card__full-link").attr("href") || "";
      const companyLogo =
        job.find(".artdeco-entity-image").attr("data-delayed-url") || "";
      const searchDate = formatter.format(new Date());
      const parsedDateAgo = parseDateAgo(dateAgo);

      //get time diff between searchDate and parsedDateAgo
      const searchDateObj = new Date(searchDate);
      const parsedDateObj = new Date(parsedDateAgo);
      const timeDiff = searchDateObj - parsedDateObj;
      const timeDiffInMinutes = Math.floor(timeDiff / (1000 * 60));
      return {
        date: date,
        searchDate: searchDate,
        parsedDateAgo: parsedDateAgo,
        timeDiffInMinutes: timeDiffInMinutes,
        dateAgoString: dateAgo,
        position: position,
        company: company,
        companyLogo: companyLogo,
        location: location,
        jobUrl: jobUrl,
        keyword: keyword,
        offset: offset,
      };
    })
    .get();

  //order jsonobject by timediffinminutes from smallest to largest
  jobObjects.sort((a, b) => {
    const dateA = new Date(a.timeDiffInMinutes);
    const dateB = new Date(b.timeDiffInMinutes);
    return dateA - dateB; // Ordenar de más antiguo a más reciente
  });

  return jobObjects;
}

function parseDateAgo(dateAgo) {
  const match = dateAgo.match(
    /^(\d+)\s+(minute|minutes|hour|hours|day|days|week|weeks|month|months|year|years)\s+ago$/
  );
  if (!match) {
    throw new Error(`Formato inválido: ${dateAgo}`);
  }

  const amount = parseInt(match[1], 10);
  const unit = match[2];

  const result = new Date();

  switch (unit) {
    case "minute":
    case "minutes":
      result.setMinutes(result.getMinutes() - amount);
      break;
    case "hour":
    case "hours":
      result.setHours(result.getHours() - amount);
      break;
    case "day":
    case "days":
      result.setHours(result.getHours() - 24 * amount);
      break;
    case "week":
    case "weeks":
      result.setHours(result.getHours() - 24 * 7 * amount);
      break;
    case "month":
    case "months":
      result.setHours(result.getHours() - 24 * 30 * amount);
      break;
    case "year":
    case "years":
      result.setHours(result.getHours() - 24 * 365 * amount);
      break;
    default:
      throw new Error(`Unidad no soportada: ${unit}`);
  }

  const formattedDate = formatter.format(result);

  return formattedDate;
}

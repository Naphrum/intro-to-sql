const sqlite3 = require("sqlite3").verbose();
const db = new sqlite3.Database("./db/database.sqlite");

const fs = require("fs");

const fileContent = fs.readFileSync("queries.sql", "utf-8");
const sections = fileContent.split("-- QUERY");

// Remove the first empty element from split
sections.shift();

// Convert the array of strings into an object with keys
const queriesObject = {};
sections.forEach(section => {
  const lines = section.split("\n");
  const key = lines.shift().trim(); // The query key (e.g., "QUERY1")

  // Removing comment lines and joining the rest to form the query string
  const value = lines
    .filter(line => !line.trim().startsWith("--"))
    .join("\n")
    .trim();

  queriesObject[key] = value;
});

describe("SQL Queries", function () {
  it("should Write a query to get all records from the artists table", function (done) {
    db.all(queriesObject["1"], [], (err, studentRows) => {
      if (err) {
        throw err;
      }

      // Directly executing the correct query
      db.all("SELECT * FROM artists;", [], (err, correctRows) => {
        if (err) {
          throw err;
        }

        expect(studentRows).toEqual(correctRows);
        done();
      });
    });
  });
  it("should Retrieve all tracks which have a duration less than 180 seconds (3 minutes).", function (done) {
    db.all(queriesObject["2"], [], (err, studentRows) => {
      if (err) {
        throw err;
      }

      // Directly executing the correct query
      db.all("SELECT * FROM tracks WHERE duration < 180;", [], (err, correctRows) => {
        if (err) {
          throw err;
        }

        expect(studentRows).toEqual(correctRows);
        done();
      });
    });
  });
  it("should Retrieve all artists from the US.", function (done) {
    db.all(queriesObject["3"], [], (err, studentRows) => {
      if (err) {
        throw err;
      }

      // Directly executing the correct query
      db.all("SELECT * FROM artists WHERE country = 'USA';", [], (err, correctRows) => {
        if (err) {
          throw err;
        }

        expect(studentRows).toEqual(correctRows);
        done();
      });
    });
  });
  it("should Retrieve all albums released after the year 2000.", function (done) {
    db.all(queriesObject["4"], [], (err, studentRows) => {
      if (err) {
        throw err;
      }

      // Directly executing the correct query
      db.all("SELECT * FROM albums WHERE release_year > 2000;", [], (err, correctRows) => {
        if (err) {
          throw err;
        }

        expect(studentRows).toEqual(correctRows);
        done();
      });
    });
  });
  it("should List tracks that were released before January 1st, 1990.", function (done) {
    db.all(queriesObject["5"], [], (err, studentRows) => {
      if (err) {
        throw err;
      }

      // Directly executing the correct query
      db.all("SELECT * FROM tracks WHERE release_date < '1990-01-01';", [], (err, correctRows) => {
        if (err) {
          throw err;
        }

        expect(studentRows).toEqual(correctRows);
        done();
      });
    });
  });
  it("should Retrieve all artists who debuted in the 90s.", function (done) {
    db.all(queriesObject["6"], [], (err, studentRows) => {
      if (err) {
        throw err;
      }

      // Directly executing the correct query
      db.all("SELECT * FROM artists WHERE debut_year BETWEEN 1990 AND 1999;", [], (err, correctRows) => {
        if (err) {
          throw err;
        }

        expect(studentRows).toEqual(correctRows);
        done();
      });
    });
  });
  it("should List albums that have more than 10 tracks.", function (done) {
    db.all(queriesObject["7"], [], (err, studentRows) => {
      if (err) {
        throw err;
      }

      // Directly executing the correct query
      db.all("SELECT * FROM albums WHERE total_tracks > 10;", [], (err, correctRows) => {
        if (err) {
          throw err;
        }

        expect(studentRows).toEqual(correctRows);
        done();
      });
    });
  });
  it("should List artists who have more than 5 albums and are from 'UK'.", function (done) {
    db.all(queriesObject["8"], [], (err, studentRows) => {
      if (err) {
        throw err;
      }

      // Directly executing the correct query
      db.all("SELECT * FROM artists WHERE total_albums > 5 AND country = 'UK';", [], (err, correctRows) => {
        if (err) {
          throw err;
        }

        expect(studentRows).toEqual(correctRows);
        done();
      });
    });
  });
  it("should Retrieve tracks with over 500,000 play counts.", function (done) {
    db.all(queriesObject["9"], [], (err, studentRows) => {
      if (err) {
        throw err;
      }

      // Directly executing the correct query
      db.all("SELECT * FROM tracks WHERE play_count > 500000;", [], (err, correctRows) => {
        if (err) {
          throw err;
        }

        expect(studentRows).toEqual(correctRows);
        done();
      });
    });
  });
  it("should Retrieve albums released between 1995 and 2005 by artists from 'Canada'.", function (done) {
    db.all(queriesObject["10"], [], (err, studentRows) => {
      if (err) {
        throw err;
      }

      // Directly executing the correct query
      db.all("SELECT * FROM albums WHERE release_year BETWEEN 1995 AND 2005;", [], (err, correctRows) => {
        if (err) {
          throw err;
        }

        expect(studentRows).toEqual(correctRows);
        done();
      });
    });
  });
  it("should List artists who have a debut year before 1980 or after 2000.", function (done) {
    db.all(queriesObject["11"], [], (err, studentRows) => {
      if (err) {
        throw err;
      }

      // Directly executing the correct query
      db.all("SELECT * FROM artists WHERE debut_year < 1980 OR debut_year > 2000;", [], (err, correctRows) => {
        if (err) {
          throw err;
        }

        expect(studentRows).toEqual(correctRows);
        done();
      });
    });
  });
  it(`should List tracks that have the word "love" in their name.`, function (done) {
    db.all(queriesObject["12"], [], (err, studentRows) => {
      if (err) {
        throw err;
      }

      // Directly executing the correct query
      db.all("SELECT * FROM tracks WHERE name LIKE '%love%';", [], (err, correctRows) => {
        if (err) {
          throw err;
        }

        expect(studentRows).toEqual(correctRows);
        done();
      });
    });
  });
  it("should Retrieve albums from the label 'Columbia' that have been played more than 1 million times.", function (done) {
    db.all(queriesObject["13"], [], (err, studentRows) => {
      if (err) {
        throw err;
      }

      // Directly executing the correct query
      db.all("SELECT * FROM albums WHERE label = 'Columbia' AND total_play_count > 1000000;", [], (err, correctRows) => {
        if (err) {
          throw err;
        }

        expect(studentRows).toEqual(correctRows);
        done();
      });
    });
  });
  it("should List tracks with a duration between 200 and 300 seconds.", function (done) {
    db.all(queriesObject["14"], [], (err, studentRows) => {
      if (err) {
        throw err;
      }

      // Directly executing the correct query
      db.all("SELECT * FROM tracks WHERE duration BETWEEN 200 AND 300;", [], (err, correctRows) => {
        if (err) {
          throw err;
        }

        expect(studentRows).toEqual(correctRows);
        done();
      });
    });
  });
  it("should Retrieve all artists from 'Australia' or 'New Zealand'.", function (done) {
    db.all(queriesObject["15"], [], (err, studentRows) => {
      if (err) {
        throw err;
      }

      // Directly executing the correct query
      db.all("SELECT * FROM artists WHERE country IN ('Australia', 'New Zealand');", [], (err, correctRows) => {
        if (err) {
          throw err;
        }

        expect(studentRows).toEqual(correctRows);
        done();
      });
    });
  });
  it("should List albums that have less than 8 tracks and more than 500,000 total play counts.", function (done) {
    db.all(queriesObject["16"], [], (err, studentRows) => {
      if (err) {
        throw err;
      }

      // Directly executing the correct query
      db.all("SELECT * FROM albums WHERE total_tracks < 8 AND total_play_count > 500000;", [], (err, correctRows) => {
        if (err) {
          throw err;
        }

        expect(studentRows).toEqual(correctRows);
        done();
      });
    });
  });
  it("should List tracks released after January 1st, 2000 that feature other artists.", function (done) {
    db.all(queriesObject["17"], [], (err, studentRows) => {
      if (err) {
        throw err;
      }

      // Directly executing the correct query
      db.all("SELECT * FROM tracks WHERE release_date > '2000-01-01' AND feature_artists IS NOT NULL;", [], (err, correctRows) => {
        if (err) {
          throw err;
        }

        expect(studentRows).toEqual(correctRows);
        done();
      });
    });
  });
  it("should Retrieve artists who debuted in the 80s and have more than 3 albums.", function (done) {
    db.all(queriesObject["18"], [], (err, studentRows) => {
      if (err) {
        throw err;
      }

      // Directly executing the correct query
      db.all("SELECT * FROM artists WHERE debut_year BETWEEN 1980 AND 1989 AND total_albums > 3;", [], (err, correctRows) => {
        if (err) {
          throw err;
        }

        expect(studentRows).toEqual(correctRows);
        done();
      });
    });
  });
  it(`should List tracks that have the words "night" or "day" in their name.`, function (done) {
    db.all(queriesObject["19"], [], (err, studentRows) => {
      if (err) {
        throw err;
      }

      // Directly executing the correct query
      db.all("SELECT * FROM tracks WHERE name LIKE '%night%' OR name LIKE '%day%';", [], (err, correctRows) => {
        if (err) {
          throw err;
        }

        expect(studentRows).toEqual(correctRows);
        done();
      });
    });
  });
  it(`should Retrieve albums where the average play count per song is greater than 100,000.`, function (done) {
    db.all(queriesObject["20"], [], (err, studentRows) => {
      if (err) {
        throw err;
      }

      // Directly executing the correct query
      db.all("SELECT * FROM albums WHERE total_play_count / total_tracks > 100000;", [], (err, correctRows) => {
        if (err) {
          throw err;
        }

        expect(studentRows).toEqual(correctRows);
        done();
      });
    });
  });
  it("should List tracks with play counts between 100,000 and 500,000.", function (done) {
    db.all(queriesObject["21"], [], (err, studentRows) => {
      if (err) {
        throw err;
      }

      // Directly executing the correct query
      db.all("SELECT * FROM tracks WHERE play_count BETWEEN 100000 AND 500000;", [], (err, correctRows) => {
        if (err) {
          throw err;
        }

        expect(studentRows).toEqual(correctRows);
        done();
      });
    });
  });
  it("should Retrieve artists who are not from 'US' or 'UK'.", function (done) {
    db.all(queriesObject["22"], [], (err, studentRows) => {
      if (err) {
        throw err;
      }

      // Directly executing the correct query
      db.all("SELECT * FROM artists WHERE country NOT IN ('US', 'UK');", [], (err, correctRows) => {
        if (err) {
          throw err;
        }

        expect(studentRows).toEqual(correctRows);
        done();
      });
    });
  });
  it("should List albums that have a cover image URL and more than 8 tracks.", function (done) {
    db.all(queriesObject["23"], [], (err, studentRows) => {
      if (err) {
        throw err;
      }

      // Directly executing the correct query
      db.all("SELECT * FROM albums WHERE cover_image_url IS NOT NULL AND total_tracks > 8;", [], (err, correctRows) => {
        if (err) {
          throw err;
        }

        expect(studentRows).toEqual(correctRows);
        done();
      });
    });
  });
  it(`should List tracks with a duration less than 2 minutes and have the word "boy" in their lyrics.`, function (done) {
    db.all(queriesObject["24"], [], (err, studentRows) => {
      if (err) {
        throw err;
      }

      // Directly executing the correct query
      db.all("SELECT * FROM tracks WHERE duration < 240 AND lyrics LIKE '%boy%';", [], (err, correctRows) => {
        if (err) {
          throw err;
        }

        expect(studentRows).toEqual(correctRows);
        done();
      });
    });
  });
  it(`should Retrieve artists who have a bio containing the word "metal" AND debuted after 1970 but before 2000 AND are from either 'USA' or 'UK'.`, function (done) {
    db.all(queriesObject["25"], [], (err, studentRows) => {
      if (err) {
        throw err;
      }

      // Directly executing the correct query
      db.all("SELECT * FROM artists WHERE bio LIKE '%metal%' AND debut_year > 1970 AND debut_year < 2000 AND country IN ('USA', 'UK');", [], (err, correctRows) => {
        if (err) {
          throw err;
        }

        expect(studentRows).toEqual(correctRows);
        done();
      });
    });
  });
  it("should List albums that have play counts not between 500,000 and 1,500,000 AND were released after 2000.", function (done) {
    db.all(queriesObject["26"], [], (err, studentRows) => {
      if (err) {
        throw err;
      }

      // Directly executing the correct query
      db.all("SELECT * FROM albums WHERE total_play_count NOT BETWEEN 500000 AND 1500000 AND release_year > 2000;", [], (err, correctRows) => {
        if (err) {
          throw err;
        }

        expect(studentRows).toEqual(correctRows);
        done();
      });
    });
  });
  it(`should Retrieve tracks that were released on a date between January 1st, 1995 and December 31st, 2005 AND either have more than 1,500,000 play counts OR have the word "world" in their name.`, function (done) {
    db.all(queriesObject["27"], [], (err, studentRows) => {
      if (err) {
        throw err;
      }

      // Directly executing the correct query
      db.all("SELECT * FROM tracks WHERE release_date BETWEEN '1995-01-01' AND '2005-12-31' AND (play_count > 1500000 OR name LIKE '%world%');", [], (err, correctRows) => {
        if (err) {
          throw err;
        }

        expect(studentRows).toEqual(correctRows);
        done();
      });
    });
  });
  it(`should List artists with names starting with "The" AND have either debuted before 1970 OR have more than 8 albums.`, function (done) {
    db.all(queriesObject["28"], [], (err, studentRows) => {
      if (err) {
        throw err;
      }

      // Directly executing the correct query
      db.all("SELECT * FROM artists WHERE name LIKE 'The%' AND (debut_year < 1970 OR total_albums > 8);", [], (err, correctRows) => {
        if (err) {
          throw err;
        }

        expect(studentRows).toEqual(correctRows);
        done();
      });
    });
  });
  it(`should List tracks where the name contains the word "love" AND the duration is less than 3 minutes or the name mentions "world" AND the duration is greater than 3 minutes.`, function (done) {
    db.all(queriesObject["29"], [], (err, studentRows) => {
      if (err) {
        throw err;
      }

      // Directly executing the correct query
      db.all("SELECT * FROM tracks WHERE (name LIKE '%love%' AND duration < 180) OR (name LIKE '%world%' AND duration > 180);", [], (err, correctRows) => {
        if (err) {
          throw err;
        }

        expect(studentRows).toEqual(correctRows);
        done();
      });
    });
  });
  it("should Retrieve albums released in years that are multiples of 5.", function (done) {
    db.all(queriesObject["30"], [], (err, studentRows) => {
      if (err) {
        throw err;
      }

      // Directly executing the correct query
      db.all("SELECT * FROM albums WHERE release_year % 5 = 0;", [], (err, correctRows) => {
        if (err) {
          throw err;
        }

        expect(studentRows).toEqual(correctRows);
        done();
      });
    });
  });
});

afterAll(() => {
  db.close();
});

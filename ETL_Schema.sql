
CREATE TABLE fips(
    fips_code INT PRIMARY KEY NOT NULL,
    state VARCHAR(2),
    county VARCHAR (100)
);

CREATE TABLE div_index(
    fips_code INT NOT NULL,
    diversityindex FLOAT,
    black FLOAT,
    americanindian FLOAT,
    asian FLOAT,
    nativehawaiian FLOAT,
    twoormoreraces FLOAT,
    hispanic FLOAT,
    white FLOAT,
    FOREIGN KEY (fips_code) REFERENCES fips(fips_code)
);

CREATE TABLE education(
    fips_code INT NOT NULL,
    lessthanhighschooldip FLOAT,
    highschooldiploma FLOAT,
    collegedegree FLOAT,
    bachelorsdegree FLOAT,
    FOREIGN KEY (fips_code) REFERENCES fips(fips_code)
);

CREATE TABLE unemployment(
    fips_code INT NOT NULL,
    unemploymentrate FLOAT,
    medianhouseholdincome VARCHAR (20),
    medianhhincomeper FLOAT,
    FOREIGN KEY (fips_code) REFERENCES fips(fips_code)
);

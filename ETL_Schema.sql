CREATE TABLE us_counties (
	FIPS_Code INT NOT NULL,
	State VARCHAR(2) NOT NULL,
	County VARCHAR(100) NOT NULL,
	DiversityIndex FLOAT,
	Black FLOAT,
  	AmericanIndian FLOAT,
	Asian FLOAT,
  	NativeHawaiian FLOAT,
  	TwoOrMoreRaces FLOAT,
  	Hispanic FLOAT,
	White FLOAT,
	UnemploymentRate FLOAT,
	MedianHouseHoldIncome FLOAT,
	MedianHHIncomePer FLOAT,
	LessthanHighSchoolDip FLOAT,
	HighSchoolDiploma FLOAT,
	CollegeDegree FLOAT,
	BachelorsDegree FLOAT);
	
SELECT * FROM us_counties;
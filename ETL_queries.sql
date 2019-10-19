--Data Analysis

--List the following details of each county: fips_code, state, county, diversity index, unemployment rate.
select fips.fips_code, fips.state, fips.county, div_index.diversityindex, unemployment.unemploymentrate
from fips
join div_index
on fips.fips_code=div_index.fips_code
join unemployment
on fips.fips_code=unemployment.fips_code
;


--List counties which have high unemployment rate 

select fips.fips_code, fips.state, fips.county, unemployment.unemploymentrate
from fips
join unemployment
on fips.fips_code=unemployment.fips_code
where unemployment.unemploymentrate >= 50
order by unemployment.unemploymentrate DESC
;


--List the counties which have high percentage of asian, high percentage of bachelor or higher degree, and low unemployment rate
select fips.fips_code, fips.state, fips.county, div_index.asian, education.bachelorsdegree, unemployment.unemploymentrate
from fips
join div_index
on fips.fips_code=div_index.fips_code
join education
on fips.fips_code=education.fips_code
join unemployment
on fips.fips_code=unemployment.fips_code

where div_index.asian >=50
and education.bachelorsdegree >=50
and unemployment.unemploymentrate <20
;



--List the counties in NY state which has lower unemployment rate and accounts for low percentage of black and hispanic
select fips.fips_code, fips.state, fips.county, unemployment.unemploymentrate, div_index.black, div_index.hispanic,
from fips
join unemployment
on fips.fips_code=unemployment.fips_code
join div_index
on fips.fips_code=div_index.fips_code
where fips.state='NY' 
and unemployment.unemploymentrate < 20
and sum(div_index.black,div_index.hispanic) <40
order by sum(div_index.black,div_index.hispanic) DESC
;



--List the unemployment rate in NY and SF and compare their average unemployment rate
select fips.fips_code, fips.state, fips.county, unemployment.unemploymentrate
from fips
join unemployment
on fips.fips_code=unemployment.fips_code

where fips.state='NY'
or fips.state="SF"

group by fips.state
order by avg(unemployment.unemploymentrate)Desc
;
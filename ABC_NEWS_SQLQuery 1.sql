--this query will extract all articles related to Iraq
SELECT 
DATEPART(year, CONVERT(date, convert(varchar(8), publish_date),112)) as year,
DATEPART(month, CONVERT(date, convert(varchar(8), publish_date),112)) as month,
datepart(day, convert(date, convert(varchar(8),publish_date),112)) as day,
headline_text
--into iraq_abc_news  --this saves the table
FROM ABC_News
WHERE --the following are all Iraqi states
    headline_text LIKE '%iraq%' OR
    headline_text LIKE '%baghdad%' OR
    headline_text LIKE '% basra%' OR
    headline_text LIKE '%anbar%' OR
    headline_text LIKE '%babil%' OR
    headline_text LIKE '%dhi qar%' OR
    headline_text LIKE '%qadisiyyah%' OR
    headline_text LIKE '%diwaniyah%' OR
    headline_text LIKE '%diyala%' OR
    headline_text LIKE '%dohuk%' OR
    headline_text LIKE '%erbil%' OR
    headline_text LIKE '%karbala%' OR
    headline_text LIKE '%kirkuk%' OR
    headline_text LIKE '%maysan%' OR
    headline_text LIKE '%amrah%' OR
    headline_text LIKE '%muthanna%' OR
    headline_text LIKE '%najaf%' OR
    headline_text LIKE '%nineveh%' OR
    headline_text LIKE '%mosul%' OR
    headline_text LIKE '%salah%' OR
    headline_text LIKE '%tikrit%' OR
    headline_text LIKE '%sulaymaniyah%' OR
    headline_text LIKE '%sulaimaniyah%' OR
    headline_text LIKE '%wasit%'
order by year

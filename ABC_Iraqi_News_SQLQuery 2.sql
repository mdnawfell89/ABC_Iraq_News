--this query will take each news headline string and split it into a list 
-- of it's individual words
SELECT
    LOWER(LTRIM(RTRIM(value))) AS word, year, month, day,
    COUNT(*) AS frequency
	--into Iraq_News   --(this saves the table)
FROM iraq_abc_news
CROSS APPLY STRING_SPLIT(cast(headline_text as varchar(max)), ' ')

WHERE value <> '' --if value is empty
  AND LOWER(LTRIM(RTRIM(value))) NOT IN  --ignore the following words

('the','a','an','and','or','but','of','to','in','on','for','with','at','from',
'is','are','was','were','be','been','being','have','has','had','having',
'it','its','this','that','these','those','their','his','her','she','he','they','them','we','us','our',
'said','says','say','told','also','pm','minister','ministers','official','officials',
'government','govt','would','could','should','may','might','must','will','can',
'one','two','three','four','last','new','more','many','several','least','no','not',
'out','over','after','before','up','down','back','again','off','into','near','around','across',
'when','where','while','because','although','despite','if','then','so','than','as','among','between','through','against','per','each','such','like',
'while','whether','however','although','despite','because','since','during',
'today','yesterday','tomorrow','monday','tuesday','wednesday','thursday','friday','saturday','sunday',
'time','year','years','week','weeks','day','days','month','months','northern','general',
'people','person','men','women','children','officials','leaders','leader','top',
'news','bbc','report','reports','reported','according','update','home','visit',
'am','pm','local','by','howard','plan','five','10','air','five','city','former',
'iraq','iraqi','iraqs','iraqis','aust','state','calls','talks','found','al','end',
'first','border','under','return','20','set','about','north','truck','12','face','awb',
'cleric','makes','six','probe','mass', '120') 

GROUP BY year,month,day, 
LOWER(LTRIM(RTRIM(value)))

ORDER BY frequency DESC;

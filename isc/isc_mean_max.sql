select
subject,
avg(score::float)::numeric(4,2) as mean,
stddev_pop(score::float)::numeric(4,2) as sd,
max(score::integer) as max,
count(*) as n
from isc.scores
where score not in ('XXX','PCA  *','PCNA *','ABS  *','SPCA *','SPCNA*','A','B','C','D','X')
group by subject
order by n desc;


CREATE OR REPLACE TABLE fact.guardian_modi_fact AS

WITH guardian_data AS (
  SELECT *
  FROM `definitions.src_gurardian_api_data`
),

all_tags AS (
  SELECT
    t.id,
    t.webTitle,
    tagItems.type,
    tagItems.webTitle AS tagValue
  FROM guardian_data t
  CROSS JOIN UNNEST(t.tags) AS tagItems
)
,final as
(SELECT 
    g.id,
    g.type,
    g.sectionId,
    g.sectionName,
    timestamp(g.webPublicationDate) as PublishDate,
    g.webTitle,
    g.webUrl,
    cast(g.fields.charCount as int) charCount,
    cast(g.fields.wordCount as int) wordCount,
    g.fields.isLive,
    g.fields.lang,
    timestamp(g.fields.lastModified) lastModified,
    g.fields.productionOffice,
    a.tagValue AS authorName,
FROM guardian_data g
LEFT JOIN (
    SELECT * 
    FROM all_tags 
    WHERE type = 'contributor'
) a
ON a.id = g.id
)

select *
  ,date_diff(lastModified,  PublishDate, HOUR) as editDiffHrs
  ,date_diff(lastModified,  PublishDate, DAY) as editDiffDay
from final;





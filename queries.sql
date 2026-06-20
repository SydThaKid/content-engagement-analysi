-- Content Engagement Analysis — SQL queries
-- Database: content_engagement.db   |   Table: articles

-- 1) Average shares by content channel (ranked)
SELECT channel,
       COUNT(*)            AS article_count,
       ROUND(AVG(shares))  AS avg_shares
FROM articles
WHERE channel != 'Uncategorized'
GROUP BY channel
ORDER BY avg_shares DESC;

-- 2) Average shares by publish day (ranked)
SELECT weekday,
       COUNT(*)            AS article_count,
       ROUND(AVG(shares))  AS avg_shares
FROM articles
GROUP BY weekday
ORDER BY avg_shares DESC;

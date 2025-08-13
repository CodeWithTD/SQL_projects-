SELECT
  TO_CHAR(job_posted_date, 'Month') AS month_name,
  COUNT(job_id) AS job_postings_count
FROM job_postings_fact
GROUP BY TO_CHAR(job_posted_date, 'Month'), DATE_TRUNC('Month', job_posted_date)
ORDER BY DATE_TRUNC('Month', job_posted_date);



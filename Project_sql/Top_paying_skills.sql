SELECT 
    skills,
    ROUND(AVG(salary_year_avg), 0) AS avg_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE job_title_short = 'Data Analyst'
AND salary_year_avg IS NOT NULL
AND job_work_from_home IS TRUE 
GROUP BY skills
ORDER BY avg_salary DESC
LIMIT 25;

/* Here are three quick trends from your top 25 paying skills list:
Big Data & Cloud Lead the Pack: Skills like PySpark, Databricks, Kubernetes, GCP, and Airflow show that employers pay more for data engineering and scalable cloud processing expertise.
Toolchain Integration is Valued: DevOps and collaboration tools (Bitbucket, GitLab, Jenkins, Atlassian) rank high, signaling that analysts who work seamlessly with development pipelines are in demand.
Specialized Analytics Libraries Pay Well: High salaries for Pandas, NumPy, Scikit-learn, and ElasticSearch highlight that mastery of advanced data manipulation and machine learning tools remains a premium skill set.
*/

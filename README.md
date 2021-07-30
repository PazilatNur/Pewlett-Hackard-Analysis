# Pewlett-Hackard-Analysis
## Overview:

The purpose of this analysis is to identify the list of retirement eligible employees by most recent job title. This analysis result can help us estimate and prepare for the new cycle of hiring process to fill the up-coming job openings. Another important goal of the analysis is to determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program to help us train our candidates ahead of time. 

### Analysis Result

- We have 90398 number of employees are about to retire across different department. 

- Among the reitrement eligible employees, "Senior Engineer" made up for the largest amount. 29415 of Senior Engineer position

- Only 2 managirial position will have new openings. 

- We have 1549 number of mentorship eligibile employees to train next generation. Given the number of employees who is going to retire soon, our current number of mentorship eligibile employees might not be enough for all position tranings. 

## Summary

1. How many roles will need to be filled as the "silver tsunami" begins to make an impact?

Query: SELECT count(*) FROM unique_titles;

Result: 90398 roles will need to be filled

2. Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

Query:

SELECT title, count(emp_no)

FROM mentorship_eligibilty

GROUP BY (title);

Given the huge number of Senior Engineer job openings, 169 current mentorship eligible senior engineer employees seems to be awefully short in need. Also, we don't have manager level of mentorship eligible employees, which will be difficult to train someone for leadership role in the future.


# Employee Database: Mystery Solved
![como-funciona-data-analytics](https://user-images.githubusercontent.com/77795761/119237775-3b0e7a80-bb04-11eb-8606-4708971c5bc8.jpg)

In this repository, I solve a case for a company in terms of getting important information from data from years ago to research employees from the 80s and 90s.
As a data engineer, I used tools I learned from when I was in my Data Bootcamp to obtain the information that my boss requested.

**Navigating Through The Repository**

The structure of the repository is simple: *EmployeeSQL* contains all of the requested files for submission. They're organized in directories:
  - *csv-data* contains the CSV files provided to me by my boss to start the analysis.
  - *erd* contains the ERD files I got from the Data Modeling phase. 
  - *jupyter* contains the bonus assignmnet: the jupyter notebook as well as the output files and necessary configuration files for the notebook to work.
  - *sql* contains the Data Engineering and Analysis part of the assignment, plus screenshots of the query results. The epilogue query is also included here.

**Data Engineering and Analysis**
1. Data Modeling
   
   In this part, an ERD was created based on the CSV files provided, to ease the Data Engineering section.
   <img width="1367" alt="erd-png" src="https://user-images.githubusercontent.com/77795761/119238065-e7049580-bb05-11eb-85a5-8e28b6632de1.png">

2. Data Engineering

  In this part, tables were created from the CSV files provided. It includes the variables from each file, as well as the data types, primary keys, 
  foreign keys, and other constraints.

3. Data Analysis

  This part takes the tables created in the Data Engineering section, with the CSV files already imported. With this database ready, 
  several queries were ran to obtain employee information.
  <img width="732" alt="query1" src="https://user-images.githubusercontent.com/77795761/119238139-5f6b5680-bb06-11eb-9df9-57b5a190618e.png">

4. Bonus Analysis

  In this part, the employee database was analyzed using pandas and matplotlib yielding results on key aspects, such as salary distribution and 
  average salary per job title. The resulting plots can be seen both on the notebook and in the outputs folder. sqlalchemy was used to merge the 
  two worlds: jupyter and sql.
  
**Results and Discussion**
![salaryhist](https://user-images.githubusercontent.com/77795761/119238176-99d4f380-bb06-11eb-8816-b6f9fb1e5872.png)
Salaries, while having a big range of values, are not equally distributed, with almost half of all of the employees earning less than 50000 USD a year. 

![avgsalary](https://user-images.githubusercontent.com/77795761/119238188-a8230f80-bb06-11eb-9b1f-ca7c33bf30ca.png)
Engineers are most affected by this, as even the Senior Engineers are earning the same as the Assistant Engineers.

On a personal note, *do not underpay engineers*. You ought to keep your engineers happy if you want your product to work and be efficient. Your engineers are going to go on strike if their growth opportunities in the company yield almost no economic benefits.

**Epilogue**
My employee number is 499942, according to the epilogue. I wanted to see what's up with that.
<img width="702" alt="epilogue-query" src="https://user-images.githubusercontent.com/77795761/119238220-d6a0ea80-bb06-11eb-869f-f0f4e19a33f6.png">

Not only my name is April Foolsday (lol) but also, I have the lowest possible income in the company. Yikes.


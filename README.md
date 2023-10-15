# Facebook Data Analysis

Welcome to the "Facebook Data Analysis" project, where we've embarked on an exciting journey into the world of data. With 98,000 records at our fingertips, we've harnessed the power of Python, SQL, and Power BI to uncover valuable insights. Our adventure has led us through EDA, ETL, Data Modeling, Data Cleaning, and Data Analytics, all to tell a data-driven story.

## Key Discoveries

Let's dive right into the thrilling discoveries we've made:

  * ### Finding Max Age User

      We didn't just find the oldest user on Facebook; we celebrated their age.

  *  ### Age Group of Oldest User

      Peek into the age group where our oldest user belongs, a testament to the diversity of Facebook.

  *  ### Number of Users, Gender-wise

      The gender distribution among Facebook users—how did it fare? Discover in our analysis.

  *  ### Total Likes

      Likes, the currency of Facebook. We calculated the grand total.

  *  ### Total Friend Count

      Curious about how many friends users collectively have? We've got the answer.

  *  ### Number of Users in Age Groups

      Age group demographics, a fascinating exploration.

  *  ### Highest Number of Users in an Age Group

      One age group stood out from the rest. We'll unveil which one.

  *  ### Age with Highest Users in 21-30 Group

      A deeper dive into the 21-30 age group to find the age that dominated.

  *  ### Age with Highest Users (Overall)

      Beyond age groups, which single age took the crown for the most users?

  *  ### Gender with Highest Friend Count

      We identified the gender with the most friends. The dynamics of Facebook friendships!

  *  ### Age Group with Highest Friend Count

      The age group with the most friend connections was a captivating discovery.

  *  ### User with Highest Friend Count

      Meet the Facebook user with an impressive number of friends.

  *  ### Highest Number of Likes Received

      We've tracked the user who received the most likes, a coveted title.

  *  ### Age Receiving the Most Likes

      One age received an extraordinary number of likes. Find out which.

  *  ### Who Received the Most Likes

      Meet the Facebook user who became the "like" superstar.

  *  ### Highest Year of Birth for Users

      A peek into the birth year that shaped the majority of our users.

## SQL Queries

Our data analysis wouldn't be complete without the magic of SQL. Here are the SQL queries that powered our exploration:

1. **Finding Max Age User**
   ```sql
   select max(age) as 'Oldest user age' from fb_data
   
2. **finding age group of oldest user**
   ```sql
   select age_group as 'Age group' from fb_data
where age = ( select max(age) as 'Oldest user age' from fb_data)
group by age_group

3. **number of user's gender wise**
   ```sql
   select gender, count(gender) from fb_data
group by gender
order by gender desc

4. **Total Likes**
   ```sql
   select sum(likes) as 'Total Likes' from fb_data;
5. ***Total Friend count***
   ```sql
   select sum(friend_count) as 'Total friends' from fb_data;

6. ***number of users in age group**
   ```sql
   select age_group , count(userid) as 'Total Users' from fb_data
    group by age_group
    order by count(userid) desc
   
7. ***highest number of user's age group***
   ```sql
   select top 1 age_group , count(userid) as 'Total Users' from fb_data
    group by age_group
    order by count(userid) desc

8. ***find the which age has highest user  in age group 21-30***
   ```sql
   select top 1 age , count(userid) from fb_data
    where age_group = '21-30'
    group by age
    order by  count(userid)  desc

9. ***find the which age has highest user  in complete data base***
    ```sql
    select top 1 age , count(userid) from fb_data
    group by age
    order by  count(userid)  desc

10. ***gender which contains the higest number of friend_count***
    ```sql
    select gender ,sum(friend_count) as 'Total friend' from fb_data
    group by gender
    order by sum(friend_count) desc

11. ***age group having highest number of friend count***
    ```sql
    select sum(friend_count) , age_group from fb_data
    group by age_group
    order by sum(friend_count) desc

12. *** user which have the highest number of friend count ***
    ```sql
     select userid , age, friend_count from fb_data
     where friend_count =  (select max(friend_count) from fb_data )

13. ***highest number of like received***
    ```sql
    select top 1 sum(likes_received) , age_group from fb_data
    group by age_group
    order by sum(likes_received) desc

14. ***which age received the highest number of like***
    ```sql
    select top 1 age ,sum(likes_received) as 'Total Like received' , age_group from fb_data
    group by age,age_group
    order by sum(likes_received) desc

15. ***who received higest like***
    ```sql
    select top 1 userid,age ,friend_count,gender,likes_received, age_group from fb_data
    where age = 18
    order by likes_received desc
    
 16. ***higest year when most  of users born***
     ```sql
       select top 1 dob_year , count(userid) from fb_data
       group by dob_year
       order by count(userid) desc


## Visualization (Power BI Dashboard)
![dashboard](https://github.com/pawan941394/Facebook_data_analysis/assets/63099276/7b1ba99e-029f-41c6-bc83-87fd3f3ce117)

## Project Structure

Our project is thoughtfully organized to help you navigate with ease:

  *  ***Cleaned Database:***  In this folder, we've tidied up our data after an exploratory adventure with Python, setting the stage for our SQL analysis.

  *  ***Database:*** The core of our analysis resides here, where you'll find the database files.

  *  ***Power BI:*** For a visual voyage, our Power BI folder offers interactive data visualizations.

  *  ***Python Work:*** Immerse yourself in the world of Python, where our initial data analysis unfolded.

  *  ***SQL Works:*** Explore our SQL queries, each one a step in our data exploration journey.

## Get Started

Ready to join our journey into Facebook data? Here's how to begin:

***Clone the Repository:*** Start by cloning this repository to your local machine.

***Explore the Folders:*** Delve into various folders to access cleaned data, databases, Power BI visuals, Python code, and SQL queries.

* Discover Insights: Visit the "Key Discoveries" section to get a quick overview of our findings.

* Visualize Data: For a visual feast, head to the "Power BI" folder to interact with data visualizations.

* Learn from the Code: Dive into the "Python Work" and "SQL Works" folders for a deeper understanding of the technical aspects.

## Connect with Us

Have questions, insights, or just eager to discuss our project? Don't hesitate to reach out to us here on GitHub. We're passionate about data, and we love engaging with fellow data enthusiasts.

Thanks for joining us on this data-driven adventure! We've unveiled stories hidden within the vast expanse of Facebook data. Enjoy your exploration!

Happy data diving! 📊📈🔍

  

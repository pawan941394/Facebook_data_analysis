select * from fb_data

 ---- finding max age  

 select max(age) as 'Oldest user age' from fb_data

-- finding age group of oldest user


select age_group as 'Age group' from fb_data
where age = ( select max(age) as 'Oldest user age' from fb_data)
group by age_group

--  no of user's gender wise
select gender, count(gender) from fb_data
group by gender
order by gender desc

--- Total Likes

select sum(likes) as 'Total Likes' from fb_data;

------ Total Friend count

select sum(friend_count) as 'Total friends' from fb_data;


-- no of users in age group 

select age_group , count(userid) as 'Total Users' from fb_data
group by age_group
order by count(userid) desc

 --- highest number of user's age group 

select top 1 age_group , count(userid) as 'Total Users' from fb_data

group by age_group
order by count(userid) desc

--  now find the which age has highest user  in age group 21-30


select top 1 age , count(userid) from fb_data
where age_group = '21-30'
group by age
order by  count(userid)  desc


--  now find the which age has highest user  in complete data base

select top 1 age , count(userid) from fb_data
group by age
order by  count(userid)  desc



--- find gender which contains the higest number of friend_count

select gender ,sum(friend_count) as 'Total friend' from fb_data

group by gender
order by sum(friend_count) desc

-- finding age group having highest number of friend count 
select sum(friend_count) , age_group from fb_data
group by age_group
order by sum(friend_count) desc


 --- user which have the highest number of friend count  

 select userid , age, friend_count from fb_data
 where friend_count =  (select max(friend_count) from fb_data )

 -- highest number of like received 



select top 1 sum(likes_received) , age_group from fb_data
group by age_group
order by sum(likes_received) desc

--  which age received the highest number of like

select top 1 age ,sum(likes_received) as 'Total Like received' , age_group from fb_data
group by age,age_group
order by sum(likes_received) desc


--  who received higest like



select top 1 userid,age ,friend_count,gender,likes_received, age_group from fb_data
where age = 18
order by likes_received desc
 

--  higest year of born

select top 1 dob_year , count(userid) from fb_data
group by dob_year
order by count(userid) desc
















-- second highest 

select top 1 * from (select top 2 age_group , count(userid) as 'Total Users' from fb_data

group by age_group
order by count(userid)  desc
)as subquery



--QUESTION 1: HOW MUCH IS THE TOTAL DONATION
select sum(donation) as Total_donation
from donation_data;

--QUESTION 2 : WHAT IS THE TOTAL DONATION BY GENGER
select sum(donation)as Total_donation,gender
from donation_data
group by gender
order by gender;

--QUESTION 3 : SHOW THE TOTAL DONATION AND NUMBER OF DONATIONS BY GENDER
select gender,sum(donation)as Total_donation,count(gender)as Count_of_donation
from donation_data
group by gender
order by gender;

--QUESTION4: TOTAL DONATION MADE BY FREQUENCY OF DONATION
select donation_frequency, sum(donation)as Total_donation
from donation_data
inner join donor_data 
on donor_data.id=donation_data.id
group by donation_frequency
order by sum(donation) desc;

--	QUESTION 5: TOTAL DONATION AND NUMBER OF DONATION BY JOB FIELD
select job_field, sum(donation) as Total_donation,count(job_field) as Count_of_jobfield
from donation_data
group by job_field
order by sum(donation) Desc;
		  
---QUESTION 6 : TOTAL DONATION AND NUMBER OF DONATION ABOVE $200
select sum(donation) as Total_donation,count(donation) as donation_above200
from donation_data 
where donation > 200;

--QUESTION 7: TOTAL DONATION AND NUMBER OF DONATION BELOW $200
select sum(donation) as Total_donation,count(donation) as donation_above200
from donation_data 
where donation < 200;

--QUESTION 8: WHICH TOP TEN STATES CONTRIBUTES HIGHEST DONATIONS
select state, sum(donation) as highest_donation
from donation_data
group by state
order by sum(donation) Desc
limit 10;

--QUESTION 9:WHICH TOP 10 STATES CONTRIBUTES THE LEAST DONATIONS
select state, sum(donation) as highest_donation
from donation_data
group by state
order by sum(donation) ASC
limit 10;

--QUESTION 10: WHAT ARE THE TOP 10 CARS DRIVEN BY THE HIGHEST DONOR
select d.first_name, d.last_name,dd.car, sum(donation)as Total_donation
from donation_data as d
inner join donor_data as dd 
on dd.id= d.id
group by d.first_name,d.last_name, dd.car
order by sum(donation) desc
limit 10;
select * from donation_data;
select * from donor_data;
		  
--Qusetion 11-What is the top 10 highest donors by shirt sizes	  
select d.first_name, d.last_name,d.shirt_size, sum(donation)as Total_donation
from donation_data as d
inner join donor_data as dd 
on dd.id= d.id
group by d.first_name,d.last_name, d.shirt_size
order by sum(donation) ASC
limit 10;		  
		  
--Question 12- What is the favourite colour and movie of Top 10 highest donors		  
select d.first_name, d.last_name, dd.favourite_colour, dd.movie_genre, sum(donation)as Total_donation
from donation_data as d
inner join donor_data as dd 
on dd.id= d.id
group by d.first_name,d.last_name, dd.favourite_colour,dd.movie_genre
order by sum(donation) Asc
limit 10;		


		  
-- TOP 10 LEAST DONORS BASED ON LANGUAGE AND UNIVERSITY ATTENDED		  
select d.first_name, d.last_name, dd.university, dd.second_language, sum(donation)as Total_donation
from donation_data as d
inner join donor_data as dd 
on dd.id= d.id
group by d.first_name,d.last_name, dd.university,dd.second_language
order by sum(donation) Asc
limit 10;			  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
select d.first_name, d.last_name,dd.donation_frequency, sum(donation)as Total_donation
from donation_data as d
inner join donor_data as dd 
on dd.id= d.id
group by d.first_name,d.last_name, dd.donation_frequency
order by sum(donation) asc
limit 10;		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  




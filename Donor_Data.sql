select * from donation_data;
select * from donor_data;

--Question 1
select sum(donation) as Total_donation
from donation_data;

--Question 2
select sum(donation)as Total_donation,gender
from donation_data
group by gender
order by gender;

Question 3
select sum(donation)as Total_donation,count(gender)as Count_of_donation
from donation_data
group by gender
order by gender;

--Question 4
select first_name, sum(donation)
from donation_data
left join donor_data
on donation_data.id= donor_data.id
group by donation_frequency;


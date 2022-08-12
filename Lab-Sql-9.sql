use sakila;
-- 1 Create a table rentals_may to store the data from rental table with information for the month of May.
CREATE TABLE `rentals_may` LIKE `rental`;

-- 2 Insert values in the table rentals_may using the table rental, filtering values only for the month of May.
insert into rentals_may select * from rental
where DATE_FORMAT(rental_date, "%M")='May';

-- 3 Create a table rentals_june to store the data from rental table with information for the month of June.
CREATE TABLE `rentals_june` LIKE `rental`;

-- 4 Insert values in the table rentals_june using the table rental, filtering values only for the month of June.
insert into rentals_june select * from rental
where DATE_FORMAT(rental_date, "%M")='June';

-- 5 Check the number of rentals for each customer for May.
SELECT count(distinct(rental_id)) as rentals_per_customer from rentals_may;

-- 6 Check the number of rentals for each customer for June.
SELECT count(distinct(rental_id)) as rentals_per_customer from rentals_june;



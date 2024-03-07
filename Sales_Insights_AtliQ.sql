use sales;
SELECT * FROM sales.transactions;

# Lets see how many records do we have

select count(*)
from transactions;        # total 148395 transactions

# Lets find no. of transactions for specific location say 'Chennai'

select count(*) from transactions
where market_code='Mark001';     # Chennai
# There are 1035 transactions for Chennai

# Since there are few transactions in USD currency, lets check how many such transactions are there

select count(*) 
from transactions
where currency='USD';

# There are only 2 transactions made in USD. 

# Lets check how many transactions were made in the year 2020

select count(*)
from transactions t
inner join date d
on t.order_date=d.date
where d.year=2020;   # total 21371 transactions in 2020

# Showing all the columns for year 2020

select t.*, d. year
from transactions t
inner join date d
on t.order_date=d.date
where d.year=2020;


# Lets find total Revenue monthwise

select sum(sales_amount)
from transactions t
inner join date d
on t.order_date=d.date
where d.month_name="March";    # 92.75M revenue for march month



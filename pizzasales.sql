use sales;
select * from sales;
--Total_orders
SELECT count(distinct order_id) as Total_orders FROM sales;
op:21350

--Total_pizzas
select count(distinct pizza_name) as Total_pizzas from sales;
op:32

--Total_profit
select round(sum(total_price),2) as Total_profit from sales;
op:817860.05

--Pizza_category
select count(distinct pizza_category) as Pizza_category from sales;
op:4

--pizza_sold
select sum(quantity) as pizza_sold from sales;
op:49574

--hourly_orders
select hour (order_time) as hourly_orders,count(distinct order_id) as Total_orders from sales group by hourly_orders; 
op:9	1
10	8
11	1231
12	2520
13	2455
14	1472
15	1468
16	1920
17	2336
18	2399
19	2009
20	1642
21	1198
22	663
23	28

--monthly_orders
select month(order_date) as monthly_sales,count(distinct order_id) as total_orders from sales group by monthly_sales;
op:1	1845
2	1685
3	1840
4	1799
5	1853
6	1773
7	1935
8	1841
9	1661
10	1646
11	1792
12	1680


--yearly_orders
select year(order_date) as yearly_sales, count(distinct order_id) as total_orders from sales group by yearly_sales;
op:2015	21350


select * from sales;


---sold by category
select pizza_category,sum(quantity) as pizza_sold from sales group by pizza_category;
op:Classic	14888
Veggie	11649
Supreme	11987
Chicken	11050


---pizza_sold by size
select pizza_size,sum(quantity) as pizza_sold from sales group by pizza_size ;
op:M	15635
L	18956
S	14403
XL	552
XXL	28


--Total_orders by time
SELECT time(order_time) as time_order,count(distinct order_id) as Total_orders FROM sales group by time_order ;

--Total_orders by category
SELECT pizza_category,count(distinct order_id) as Total_orders FROM sales group by pizza_category;
op:Chicken	8536
Classic	10859
Supreme	9085
Veggie	8941
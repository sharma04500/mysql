create database if not exists Olive_Crypto;
use Olive_Crypto;
create table if not exists ram_funds (id int primary key, funding_source varchar(100), funds_received varchar(100), country varchar(20), date_received char(10), purpose varchar(255));
insert into ram_funds values (1,'corporate companies', '246.85 crores', 'India', '2023-01-01', 'General Temple Fund'),
(2, 'VHP', '419.87 crores', 'India', '2023-02-15', 'Temple construction'),
(3, 'State Govts', '89.41 crores', 'India', '2023-03-10', 'Infrastructure Development'),
(4, 'Central Govt', '150.99 crores', 'India', '2023-04-22', 'Cultural Events'),
(5, 'All Hindu Society', '44.63 crores', 'India', '2023-05-05', 'Community Outreach'),
(6, 'TTD', '11.9 crores', 'India', '2023-06-30', 'Religious Programs'),
(7, 'Foreign Donors', '75.25 crores', 'USA', '2023-07-12', 'International Support');
select * from Olive_Crypto.ram_funds;

# Funds recieved from VHP:
select funds_received as funds_from_VHP from ram_funds where funding_source='VHP';
# Funds received from USA:
select funds_received as funds_from_USA from ram_funds where country='USA';

# Funds received from TTD:
select purpose as Purpose_for_ttd from ram_funds where funding_source='TTD';
# First three months:
select sum(funds_received) as total_funds from ram_funds where date_received between '2023-01-01' and '2023-03-30';
# Group by
select sum(funds_received) as Indian_donataions from ram_funds where country='India' group by country;

# table:
#   mysql> select * from ram_funds;
#       +----+---------------------+----------------+---------+---------------+----------------------------+
#       | id | funding_source      | funds_received | country | date_received | Purpose                    |
#       +----+---------------------+----------------+---------+---------------+----------------------------+
#       |  1 | corporate companies | 246.85 crores  | India   | 2023-01-01    | General Temple Fund        |
#       |  2 | VHP                 | 419.87 crores  | India   | 2023-02-15    | Temple construction        |
#       |  3 | State Govts         | 89.41 crores   | India   | 2023-03-10    | Infrastructure Development |
#       |  4 | Central Govt        | 150.99 crores  | India   | 2023-04-22    | Cultural Events            |
#       |  5 | All Hindu Society   | 44.63 crores   | India   | 2023-05-05    | Community Outreach         |
#       |  6 | TTD                 | 11.9 crores    | India   | 2023-06-30    | Religious Programs         |
#       |  7 | Foreign Donors      | 75.25 crores   | USA     | 2023-07-12    | International Support      |
#       +----+---------------------+----------------+---------+---------------+----------------------------+
7 rows in set (0.00 sec)
create table NoblePrize(
     Years int,
	 Subjects varchar(20),
	 Winner varchar(20),
	 Country varchar(20),
	 Category varchar(20)
	 )
insert into NoblePrize 
	 values(1970,'Physics', 'Hannes Alfven','Sweden','Scientist'),
	 (1970,'Physics', 'Louis Neel','France','Scientist'),
	 (1970,'Chemistry', 'Luis Federico Leloir','France','Scientist'),
	 (1970,'Physiology', 'Ulf von Euler','Sweden','Scientist'),
	 (1970,'Chemistry','Bernard Katz','Germany','Scientist'),
	 (1970,'Literature', 'Aleksandar Solzhenit','Russia','Linguist'),
	 (1970,'Economics', 'Paul Samuelson','USA','Economist'),
	 (1970,'Physiology', 'Juilious Axelord','USA','Scientist'),
	 (1971,'Physics', 'Danis Gabor','Hungary','Scientist'),
	 (1971,'Chemistry', 'Gerhard Herzberg','Germany','Scientist'),
	 (1971,'Peace', 'Willy Brandt','Germany','Chancellor'),
	 (1971,'Literature', 'Pabola Neruda','Chile','Linguist'),
	 (1971,'Economics', 'Simon Kuznets','Russia','Economist'),
	 (1978,'Peace', 'Anwar  al-Sadat','Egypt','President'),
	 (1978,'Peace', 'Menachem Begin','Israel','Prime Minister'),
	 (1987,'Chemistry', 'Donald J.cram','USA','Scientist'),
	 (1987,'Chemistry', 'Jean-Marine Lehn','France','Scientist'),
	 (1987,'Physiology', 'Susumua Tonegawa','Japan','Scientist'),
	 (1994,'Economics', 'Reinhard Selten','Germany','Economist'),
	 (1994,'Peace ', 'Yitzhak Rabin','Israel','Prime Minister'),
	 (1987,'Physics', 'Johannes Georg Bedn','Germany','Scientist'),
	 (1987,'Literature', 'Joseph Brodsky','Russia','Linguist'),
	 (1987,'Economics', 'Robert Solow','USA','Economist'),
	 (1994,'Literature', 'Kenzaburo Oe','Japan','Linguist')
/*Question 2 */	 
Select Winner from  NoblePrize Where Subjects = 'Literature' AND Years = 1970
/*Question 3 */	 
Select Years , Subjects , Winner from NoblePrize where Years=1971
/*Question 4*/	 
Select Years , Subjects from NoblePrize where Winner = 'Danis Gabor'
/*Question 5 */	 
Select Winner from NoblePrize where Subjects = 'Physics' AND years >= 1950
/*Question 6*/	 

Select * from NoblePrize where Subjects NOT LIKE 'P%' order by Years desc, Winner asc
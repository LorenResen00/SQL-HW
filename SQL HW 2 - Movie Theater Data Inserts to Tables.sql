-- Data Insertation for Customer_RES2 table for Movie Theater

insert into Customer_RES2(
Customer_id,
Full_Name,
Phone_Number,
Email
)VALUES(
1,
'Lorenzo Resendiz',
'555-242-0013',
'LR1@gmail.com'
);

select * from Customer_RES2

--Data Insertation for Movies_RES2 table for Movie Theater

insert into Movies_RES2(
Movie_id,
Title,
Genre,
Rating
)VALUES(
1,
'SQL: Syntax Errors Take Over Earth',
'Horror',
'R'
);

select * from Movies_RES2

--Data Insertation for Tickets_RES2 for Movie Theater

insert into Tickets_RES2(
Ticket_id,
Seat_Number,
Price,
Customer_id,
Movie_id
)VALUES(
2,
'H10',
14.00,
1,
1
);

select * from Tickets_RES2

--Data Insertion for Concessions_RES2 for Movie Theater

insert into Concessions_RES2(
Concession_id,
Purchase_id,
Item,
Quantity,
Price,
Customer_id
)VALUES(
1,
1,
'Soda',
1,
2.25,
1
);

select * from Concessions_RES2









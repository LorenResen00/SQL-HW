--MOVIE THEATER TABLE CREATION - Lorenzo Resendiz

--Customer Table Creation
create table Customer_RES2(
Customer_id SERIAL primary key,
Full_Name VARCHAR(100),
Phone_Number VARCHAR(15),
Email VARCHAR(100)
);

--Movie Table Creation
create table Movies_RES2(
Movie_id SERIAL primary key,
Title VARCHAR(150),
Genre VARCHAR(50),
Rating VARCHAR(5)
);

--Ticket Table Creation
create table Tickets_RES2(
Ticket_id SERIAL primary key,
Seat_Number VARCHAR(4),
Purchase_Date DATE default CURRENT_DATE,
Price NUMERIC(5,2),
Customer_id INTEGER not null,
Movie_id INTEGER not null,
foreign key(Customer_id) references Customer_RES2(Customer_id),
foreign key(Movie_id) references Movies_RES2(Movie_id)
);

--Concessions Table Creation
create table Concessions_RES2(
Concession_id SERIAL primary key,
Purchase_id INTEGER not null,
Item VARCHAR(15),
Quantity NUMERIC(10,0),
Price NUMERIC(5,2),
Customer_id INTEGER not null,
foreign key(Customer_id) references Customer_RES2(Customer_id)
);

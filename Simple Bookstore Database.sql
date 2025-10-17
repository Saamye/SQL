CREATE TABLE Books (
	book_id INTEGER primary key,
    title TEXT not null,
    author text not null,
    genre text,
    price decimal(5,2),
    stock_quality integer
);

create table customers (
	customer_id integer primary key,
    first_name text,
    last_name text,
    email text
);

create table orders (
	order_id integer primary key,
    customer_id integer,
    book_id integer,
    order_date date,
    quantity integer,
    foreign key (customer_id) references Customers(customer_id),
    foreign key (book_id) references Books(book_id)
);
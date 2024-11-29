CREATE TABLE USER (
    user_id INT PRIMARY KEY,
    name VARCHAR(60),
    BorrowHistory DATE,
    fines DECIMAL(10, 2)
);


CREATE TABLE LIBRARIAN (
    librarian_id INT PRIMARY KEY,
    Fname VARCHAR(30),
    Lname VARCHAR(30),
    sex CHAR(1),
    Email VARCHAR(100),
    salary INT(10, 2)
);


CREATE TABLE PHONE (
    user_id INT,
    librarian_id INT,
    phone_number VARCHAR(15),
    PRIMARY KEY (user_id, librarian_id),
    FOREIGN KEY (user_id) REFERENCES USER(user_id),
    FOREIGN KEY (librarian_id) REFERENCES LIBRARIAN(librarian_id)
);


CREATE TABLE CATEGORY (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(100)
);


CREATE TABLE BOOK (
    book_id INT PRIMARY KEY,
    name VARCHAR(200),
    available_copies INT,
    publisher VARCHAR(100),
    location_id INT,
    author_id INT,
    FOREIGN KEY (location_id) REFERENCES LOCATION(location_id),
    FOREIGN KEY (author_id) REFERENCES AUTHOR(author_id)
);


CREATE TABLE LOCATION (
    location_id INT PRIMARY KEY,
    section VARCHAR(50),
    shelf VARCHAR(50)
);


CREATE TABLE AUTHOR (
    author_id INT PRIMARY KEY,
    name VARCHAR(100)
);


CREATE TABLE HAVE_MANY (
    category_id INT,
    book_id INT,
    available_books INT,
    PRIMARY KEY (category_id, book_id),
    FOREIGN KEY (category_id) REFERENCES CATEGORY(category_id),
    FOREIGN KEY (book_id) REFERENCES BOOK(book_id)
);

CREATE TABLE MESSAGE (
    message_id INT PRIMARY KEY,
    content TEXT
);

-
CREATE TABLE FEEDBACK (
    FeedBack_id INT PRIMARY KEY,
    rating INT,
    message_id INT,
    FOREIGN KEY (message_id) REFERENCES MESSAGE(message_id)
);


CREATE TABLE FINE (
    fine_id INT PRIMARY KEY,
    amount DECIMAL(10, 2),
    fine_status VARCHAR(50)
);

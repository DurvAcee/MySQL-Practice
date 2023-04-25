-- Normalization

/* 

 Most of the real life databases are in 3NF

 1NF :- 
 Tables are in 1NF if :-
 1. No repeated rows of DATA
 2. Columns only contain a single value
 3. Table has a primary key


 2NF :-
 Tables are in 2NF if :-
 1. They conform to 1NF.
 2. Every column that is not a primary key of the table is dependent on the whole of the primary key
 

 3NF :-
 Tables are in 3NF if :-
  1. They conform to 2NF.
  2. Every column that is not a primary key is *only* dependent on the whole of the primary key
 

*/ 

-- Constraints 

/*

    1. NOT NULL - A column can't contain any null values
    2. UNIQUE - A coulumn can't contain any duplicate values
    3. PRIMARY KEY - A column that uniquely idenitifies each row of data
    4. FOREIGN KEY - A column which is related to a primary key in another table
    5. CHECK - controls the values that can be inserted into a column
        ex. - CHECK(ratings BETWEEN 0 AND 100)
    6. DEFAULT - if no values is inserted into a column, you can set a default value.
        ex. - email DEFAULT 'No Data'


*/
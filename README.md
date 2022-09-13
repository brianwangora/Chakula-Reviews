# **CHAKULA REVIEWS**
### BY: **BRIAN WANGORA**

## DESCRIPTION

This is a web application where a user can give reviews on various restaurants located in Nairobi. 
These restaurants are of different categories from Fine dining to fast food.
The user only needs to enter their name into a form, then enter their review into a review form.
This review is then displayed with a list of other reviews other users have used in another section of the application.
The aim of this application is to give a central location for the opinions restaurant goers have of the restaurants they have visited.

## PROJECT LINKS
The backend is hosted on: 

The frontend is hosted on:

## PROJECT REQUIREMENTS
### PROJECT BACKEND
The backend uses Active record to interact with the database.
The database is comprised of three models; Restaurant, Review and User. These are based on three tables; Restaurants, Reviews and Users.


The relationship between the three tables is as follows.
A restaurant has many reviews. A restaurant has many users through reviews.


A user has many reviews. A user has many restaurants through reviews.


A review belongs to a restaurant and a user.

Through the use of Sinatra to create different API routes, the database can conduct all the CRUD operations; Creating a Review and a user, Reading a review, user or restaurant, Updating an existing review and finally Deleting a review.


### PROJECT FRONTEND
This project's frontend is based on react and will interact with the backend to manipulate the database and perform crud functions.

The react frontend has a total of 12 components that assist in performing the functions of the website to meet expectations.


The frontend is comprised as follows;
The react website posseses 3 react routes; Home, Restaurants and Add a Review.


**Home** - This is the landing pages that gives an introduction to the website.


**Restaurant** - This page shows all the restaurants in the database and on clicking on any of the details button, the user sees information about the restaurant they have chosen as well as the reviews given to that restaurant.


**Add a Review** - This page contains the forms that a user will use to add a review to their restaurant of choice. The user will first enter their name which will perform a POST to the users table. By doing this the user obtains an ID number which they will use to fill out the information in the review form which will perform a POST to the reviews table.



use lab_mysql;

SELECT *
FROM applestore;

/* QUESTION 1: /* ANSWER QUERY

1. 
2. 
3. 
4. 
5. 
6. 
7. 
8. 
9. 
10. 
11. 
*/


/* QUESTION 1: Which are the different genres? /* ANSWER QUERY */

SELECT prime_genre
FROM applestore
GROUP BY prime_genre;

/* QUESTION 2: Which is the genre with more apps rated? /* ANSWER QUERY */

SELECT prime_genre, SUM(rating_count_tot) AS number_of_ratings
FROM applestore
GROUP BY prime_genre
ORDER BY SUM(rating_count_tot) DESC
LIMIT 1;

/* QUESTION 3: Which is the genre with more apps? /* ANSWER QUERY */

SELECT prime_genre, COUNT(track_name) AS number_of_apps
FROM applestore
GROUP BY prime_genre
ORDER BY COUNT(track_name) DESC
LIMIT 1;

/* QUESTION 4: Which is the one with less? /* ANSWER QUERY */

SELECT prime_genre, COUNT(track_name) AS number_of_apps
FROM applestore
GROUP BY prime_genre
ORDER BY COUNT(track_name) ASC
LIMIT 1;

/* QUESTION 5: Take the 10 apps most rated. /* ANSWER QUERY */

SELECT id, track_name, rating_count_tot
FROM applestore
ORDER BY rating_count_tot DESC
LIMIT 10;

/* QUESTION 6: Take the 10 apps best rated by users. /* ANSWER QUERY */

SELECT id, track_name, user_rating
FROM applestore
ORDER BY user_rating DESC
LIMIT 10;

/* QUESTION 7: Take a look on the data you retrieved in the question 5. Give some insights. /* ANSWER QUERY */

SELECT *
FROM applestore
ORDER BY rating_count_tot DESC
LIMIT 10;

/* The 2 most rated apps are Facebook and Instagram, they're both owned by Meta and are social media apps.
All 10 of the apps are free and the most rated app Facebook has a rating below all others at 3.5 */

/* QUESTION 8: Take a look on the data you retrieved in the question 6. Give some insights. /* ANSWER QUERY */

SELECT *
FROM applestore
ORDER BY user_rating DESC
LIMIT 10;

/* The best rated app is some asian symbols I can't read the name, most of the apps are free except for 2
Most apps have only 1 user rating, 'Slots: Get Rich Slot Machines Casino Slot Games' has 2k ratings

/* QUESTION 9: Now compare the data from questions 5 and 6. What do you see? /* ANSWER QUERY */


/* QUESTION 10: How could you take the top 3 regarding the user ratings but also the number of votes? /* ANSWER QUERY */

SELECT id, track_name, user_rating, rating_count_tot
FROM applestore
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;

/* QUESTION 11: Does people care about the price? Do some queries, comment why are you doing them and the results
you retrieve. What is your conclusion? /* ANSWER QUERY */

SELECT price, SUM(rating_count_tot)
FROM applestore
GROUP BY price
ORDER BY SUM(rating_count_tot) DESC;

/* The cheaper apps seem to have more ratings, making it more attractive for users to download

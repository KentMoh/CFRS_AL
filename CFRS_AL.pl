/**Import maplist() method*/
:- use_module(library(apply)).

/**Use module less or equal for CHR constraints*/
/*:- module(leq,[leq/2]). leq has been aborted for module/2 !!*/

/**Import CHR module library as a constraint store which is built gradually with the program execution */
:- use_module(library(chr)).

/**CHR's syntaxe requires a handler statement */
/*handler movie_recommender.*/

/**Integrity constraints definition*/
/*:- chr_constraint actor/1, actress/1.*/
/*:- chr_constraint mov_clustering/2, movie/10, recommendation/3.*/

/*If a recommendation is going to be happened, that means at least a movie is */
/*recommendation(S, M, G), movie(_,_,_,G,_,_,_,_,_,_) <=> mov_clustering(I, N).*/

/*movie(_,_,_,_,_,_,_,X,_,_) ==> actor(X); actress(X).*/
/*movie(T,_,_,_,_,_,_,X,_,_) ==> myPreference().*/
/**No interval is allowed under a minimum of 1 cluster*/
/*mov_clustering(I, _, _), leq(I, 1) ==> fail.*/

/**A different movie title with an equivalent rating may be recommended and suggested to users*/ 
   /*after knowing their movie genre preferences */
/*movie(T1,_,_,G1,_,_,_,_,_,R1), recommendation(Sex, Mood, G1) ==> movie(T2,_,_,G1,_,_,_,_,_,R2).*/



/* Declaration of movies' predicates with the following parameters:*/
   /*- Title*/
   /*- Director*/
   /*- Release year*/
   /*- Genre*/
   /*- Type*/
   /*- Duration*/
   /*- Country/origin language*/
   /*- Main actor*/
   /*- vote average*/
   /*- Rating */

movie('Requiem for a Dream ', 'Darren Aronofsky', 2000, 'drama', 'others', 102, 'USA', 'Jared Leto', 7.9, 520).
movie('Biutiful', 'Alejandro Gonzalez Inarritu', 2010, 'drama', 'others', 148, 'Spain', 'Javier Bardem', 7.6, 12).
movie('How I Unleashed World War II', 'Tadeusz Chmielewski', 1969, 'comedy', 'others', 236, 'Poland', 'Marian Kociniak', 7.9, 279).
movie('Black Swan', 'Darren Aronofsky', 2010, 'drama', 'others', 108, 'USA', 'Natalie Portman', 7.7, 245).
movie('Gladiator', 'Ridley Scott', 2000, 'drama', 'others', 155, 'USA', 'Russell Crowe', 8.1, 280).
movie('Day of the Wacko', 'Marek Koterski', 2002, 'drama', 'others', 123, 'Poland', 'Marek Kondrat', 7.8, 438).
movie('The Pianist', 'Roman Polanski', 2002, 'drama', 'others', 150, 'Germany', 'Adrien Brody', 8.3, 419).
movie('The Lord of the Rings: The Fellowship of the Ring', 'Peter Jackson', 2001, 'adventure', 'fantasy', 178, 'New Zealand', 'Elijah Wood', 8.1, 503).
movie('Sherlock Holmes', 'Guy Ritchie', 2009, 'adventure', 'family', 128, 'UK', 'Robert Downey Jr', 7.8, 317).
movie('Harry Potter and the Philosopher''s Stone', 'Chris Columbus', 2001, 'adventure', 'fantasy', 152, 'UK', 'Daniel Radcliffe', 7.4, 269).
movie('The Hobbit: An Unexpected Journey', 'Peter Jackson', 2012, 'adventure', 'fantasy', 169, 'New Zealand', 'Martin Freeman', 7.7, 269).
movie('The Sixth Sense', 'M. Night Shyamalan', 1999, 'thriller', 'others', 107, 'USA', 'Bruce Willis', 7.9, 482).
movie('Fight Club', 'David Fincher', 1999, 'thriller', 'others', 139, 'UK', 'Brad Pitt', 8.3, 426).
movie('Se7en', 'David Fincher', 1995, 'thriller', 'others', 127, 'USA', 'Morgan Freeman', 8.3, 409).
movie('Shrek', 'Andrew Adamson', 2001, 'animation', 'others', 90, 'USA', 'Mike Myers', 7.8, 604).
movie('Ice Age', 'Chris Wedge', 2002, 'animation', 'others', 81, 'USA', 'Cezary Pazura', 7.6, 379).
movie('The Lion King', 'Rob Minkoff', 1994, 'animation', 'others', 89, 'USA', 'Matthew Broderick', 8.3, 381).
movie('Madagaskar', 'Tom McGrath', 2005, 'animation', 'others', 86, 'USA', 'Ben Stiller', 7.5, 290).
movie('Bang Bang! You''re Dead!', 'Guy Ferland', 2002, 'drama', 'others',  87, 'Hungary', 'Ben Foster', 7.7, 35).
movie('Dogville', 'Lars von Trier', 2003, 'drama', 'others', 178, 'Denmark', 'Nicole Kidman', 7.7, 45).
movie('Detachment', 'Tony Kaye', 2011, 'drama', 'others', 100, 'USA', 'Adrien Brody', 7.9, 30).
movie('Schindler''s List', 'Steven Spielberg', 1993, 'drama', 'others', 195, 'USA', 'Liam Neeson', 8.4, 269).
movie('Shutter Island', 'Martin Scorsese', 2010, 'thriller', 'others', 138, 'USA', 'Leonardo Di Caprio', 8.1, 336).
movie('Home Alone', 'Chris Columbus', 1990, 'comedy', 'others', 103, 'USA', 'Macaulay Culkin', 7.1, 297).
movie('Teddy Bear', 'Stanislaw Bareja', 1980, 'comedy', 'others', 111, 'Poland', 'Stanislaw Tym', 7.8, 21).
movie('The Devil Wears Prada', 'David Frankel', 2006, 'comedy', 'others', 109, 'USA', 'Meryl Streep', 6.9, 389).
movie('The Green Mile','Frank Darabont',1999,'drama', 'others',  188,'USA','Tom Hanks',8.7,719).
movie('The Devil''s Advocate', 'Taylor Hackford', 1997, 'thriller', 'others', 144, 'UK', 'Keanu Reeves', 8.0, 317).
movie('Suicide Room', 'Jan Komasa', 2011, 'thriller', 'others', 'Poland', 117, 'Jakub Gierszal', 6.5, 223).
movie('American Psycho', 'Mary Harron', 2000, 'thriller', 'others', 'USA', 101, 'Christian Bale', 7.3, 105).
movie('The Silence of the Lambs', 'Jonathan Demme', 1991, 'thriller', 'others', 118, 'USA', 'Anthony Hopkins', 8.2, 444).
movie('The Da Vinci Code', 'Ron Howard', 2006, 'thriller', 'others', 149, 'USA', 'Tom Hanks', 6.6, 447).
movie('The Others', 'Alejandro Amenabar', 2001, 'thriller', 'others', 'Spain', 101, 'Nicole Kidman', 7.4, 125).
movie('Up', 'Pete Docter', 2009, 'animation', 'others', 96, 'USA', 'Edward Asner', 7.4, 135).
movie('Finding Nemo', 'Andrew Stanton', 2003, 'animation', 'others', 100, 'Australia', 'Alexander Gould', 7.1, 126).
movie('Sexmission', 'Juliusz Machulski', 1984, 'comedy', 'others', 118, 'Poland', 'Jerzy Stuhr', 7.9, 420).
movie('Forrest Gump', 'Robert Zemeckis', 1994, 'comedy', 'others', 144, 'USA', 'Tom Hanks', 8.6, 697).
movie('The Hangover', 'Todd Phillips', 2009, 'comedy', 'others', 100, 'USA', 'Bradley Cooper', 7.3, 537).
movie('The Untouchables', 'Olivier Nakache', 2011, 'comedy', 'others', 112, 'France', 'Francois Cluzet', 8.7, 393).
movie('The Truman Show', 'Peter Weir', 1998, 'comedy', 'others', 103, 'USA', 'Jim Carrey', 7.4, 420).
movie('Kiler', 'Juliusz Machulski', 1997, 'comedy', 'others', 104, 'Poland', 'Cezary Pazura', 7.7, 375).
movie('Toy Story', 'John Lasseter', 1995, 'animation', 'others', 80, 'USA', 'Tom Hanks', 7.4, 124).
movie('Space Jam', 'Joe Pytka', 1996, 'animation', 'others', 88, 'USA', 'Michael Jordan', 6.9, 100).
movie('South Park', 'Trey Parker', 1999, 'animation', 'others', 81, 'USA', 'Trey Parker', 7.2, 114).
movie('Tarzan', 'Chris Buck', 1999, 'animation', 'others', 88, 'USA', 'Tony Goldwyn', 7.4, 42).
movie('Something''s Gotta Give', 'Nancy Meyers', 2003, 'romance', 'others', 128, 'USA', 'Jack Nicholson', 7.0, 102).
movie('Amélie', 'Jean-Pierre Jeunet', 2001, 'romance', 'others', 129, 'France', 'Audrey Tautou', 7.6, 203).
movie('Love Actually', 'Richard Curtis', 2003, 'romance', 'others', 135, 'UK', 'Colin Firth', 7.7, 173).
movie('Bridget Jones''s Diary', 'Sharon Maguire', 2001, 'romance', 'others', 97, 'UK', 'Renee Zellweger', 6.9, 204).
movie('Just Love Me', 'Ryszard Zatorski', 2006, 'romance', 'others', 98, 'Poland', 'Agnoszka Grochowska', 5.8, 157).
movie('Nigdy w zyciu!', 'Ryszard Zatorski', 2004, 'romance', 'others', 100, 'Poland', 'Danuta Stenka', 6.2, 124).
movie('Chocolat', 'Lasse Hallstrom', 2000, 'romance', 'others', 117, 'UK', 'Juliette Binoche', 7.5, 164).
movie('Step Up', 'Anne Fletcher', 2006, 'romance', 'others', 104, 'USA', 'Channing Tatum', 7.0, 174).
movie('Saw', 'James Wan', 2004, 'horror', 'psychopaths', 103, 'Australia', 'Tobin Bell', 6.7, 172).
movie('Final Destination', 'James Wong', 2000, 'horror', 'others', 98, 'Canada', 'Devon Sawa', 6.6, 158).
movie('The Ninth Gate', 'Roman Polanski', 1999, 'horror', 'others', 133, 'Francja', 'Johnny Depp', 7.3, 148).
movie('The Conjuring', 'James Wan', 2013, 'horror', 'ghosts', 112, 'USA', 'Vera Farmiga', 7.4, 116).
movie('The Orphanage', 'Juan Antonio Bayona', 2007, 'horror', 'ghosts', 105, 'Spain', 'Belen Rueda', 7.0, 169).
movie('The Rite', 'Mikael Hafstrom', 2011, 'horror', 'ghosts', 114, 'USA', 'Anthony Hopkins', 6.8, 84).
movie('About Time', 'Richard Curtis', 2013, 'romance', 'others', 119, 'UK', 'Domhnall Gleeson', 7.6, 100).
movie('500 Days of Summer', 'Marc Webb', 2009, 'romance', 'others', 95, 'USA', 'Joseph Gordon-Levitt', 7.2, 99).
movie('The Shining', 'Stanley Kubrick', 1980, 'horror', 'psychopaths', 146, 'USA', 'Jack Nicholson', 7.9, 326).
movie('I Am Legend', 'Francis Lawrence', 2007, 'horror', 'monsters', 101, 'Australia', 'Will Smith', 7.5, 344).
movie('Interview with the Vampire', 'Neil Jordan', 1994, 'horror', 'monsters', 123, 'USA', 'Brad Pitt', 7.8, 243).
movie('Alien', 'Ridley Scott', 1979, 'horror', 'monsters', 117, 'USA', 'Sigourney Weaver', 7.9, 211).
movie('The Ring', 'Gore Verbinski', 2002, 'horror', 'ghosts', 115, 'USA', 'Naomi Watts', 7.0, 173).
movie('Pirates of the Caribbean: Dead Man''s Chest', 'Gore Verbinski', 2006, 'adventure', 'fantasy', 150, 'USA', 'Johnny Depp', 7.8, 245).
movie('The Matrix', 'Andy Wachowski', 1999, 'adventure', 'scifi', 136, 'USA', 'Keanu Reeves', 7.6, 629).
movie('Back to the Future', 'Robert Zemeckis', 1985, 'adventure', 'scifi', 116, 'USA', 'Michael J. Fox', 7.3, 280).
movie('In Desert and Wilderness', 'Gavin Hood', 2001, 'adventure', 'family', 110, 'Poland', 'Karolina Sawka', 5.6, 48).
movie('The Witcher', 'Marek Brodzki', 2001, 'adventure', 'fantasy', 130, 'Poland', 'Michal Zebrowski', 3.9, 37).
movie('Star Wars: Episode IV - A New Hope', 'George Lucas', 1977, 'adventure', 'scifi', 121, 'USA', 'Mark Hamill', 8.0, 199).


/* List of actresses and remaining actors */
actress('Nicole Kidman').
actress('Natalie Portman').
actress('Meryl Streep').
actress('Karolina Sawka').
actress('Juliette Binoche').
actress('Channing Tatum').
actress('Audrey Tautou').
actress('Renee Zellweger').
actress('Agnieszka Grochowska').
actress('Danuta Stenka').
actress('Sigourney Weaver').
actress('Naomi Watts').
actress('Vera Farmiga').
actress('Belen Rueda').
actor(X) :- not(actress(X)).

/*Movie original language*/
english(Y) :- movie(Y,_,_,_,_,_,X,_,_,_), X == 'USA'.
foreign(Y) :- movie(Y,_,_,_,_,_,X,_,_,_), X \== 'USA'.

/*Main actor gender*/
movie_with_actor(Y) :- movie(Y,_,_,_,_,_,_,X,_,_), actor(X).
movie_with_actress(Y) :- movie(Y,_,_,_,_,_,_,X,_,_), actress(X).

/*long movies vs short movies*/
duration(Y,O) :- movie(Y,_,_,_,_,X,_,_,_,_), 20 =< X, X =< 90, O == "short".
duration(Y,O) :- movie(Y,_,_,_,_,X,_,_,_,_), 91 =< X, X =< 170, O == "long".
duration(Y,O) :- movie(Y,_,_,_,_,X,_,_,_,_), 171 =< X, O == "verylong".

/*Movies'release-date is sensistive criteria for users'attraction*/
year(Y,O) :- movie(Y,_,X,_,_,_,_,_,_,_), X =< 1980, O == "old".
year(Y,O) :- movie(Y,_,X,_,_,_,_,_,_,_), 1981 =< X, X =< 2005, O == "decent".
year(Y,O) :- movie(Y,_,X,_,_,_,_,_,_,_), 2006 =< X, O == "new".

/*Final test are done based on the user' answers, minimal explaination covers*/
 /* movie genre and it's type*/
year(Y,O1,O2,O3,O4,O5,O6) :- test(Y,O1,O2,O3,O4,O5,O6).
year(Y,O1,O2,O3,O4,O5,O6) :- test(Y,O1,O2,O3,O4,O5).
year(Y,O1,O2,O3,O4,O5,O6) :- test(Y,O1,O2,O3,O5).
year(Y,O1,O2,O3,O4,O5,O6) :- test(Y,O2,O3,O5).
year(Y,O1,O2,O3,O4,O5,O6) :- test(Y,O2,O5).
year(Y,O1,O2,O3,O4,O5,O6).

test(Y,O1,O2,O3,O4,O5,O6) :- year(Y,O1), movie(Y,_,_,O2,_,_,_,_,_,_), duration(Y,O3), (O4 == 'no' -> foreign(Y)), movie(Y,_,_,_,O5,_,_,_,_,_), (O6 == 'w' -> movie_with_actress(Y) ; O6 == 'm' -> movie_with_actor(Y)), !.
test(Y,O1,O2,O3,O4,O5) :- year(Y,O1), movie(Y,_,_,O2,_,_,_,_,_,_), duration(Y,O3), (O4 == 'no' -> foreign(Y)), movie(Y,_,_,_,O5,_,_,_,_,_), !.
test(Y,O1,O2,O3,O5) :- year(Y,O1), movie(Y,_,_,O2,_,_,_,_,_,_), duration(Y,O3), movie(Y,_,_,_,O5,_,_,_,_,_), !.
test(Y,O2,O3,O5) :- movie(Y,_,_,O2,_,_,_,_,_,_), duration(Y,O3), movie(Y,_,_,_,O5,_,_,_,_,_), !.
test(Y,O2,O5) :- movie(Y,_,_,O2,_,_,_,_,_,_), movie(Y,_,_,_,O5,_,_,_,_,_), !.

/* THe following preferences are made on, adapted from "https://www.researchgate.net/publication/233296175_Of_Sad_Men_and_Dark_Comedies_Mood_and_Gender_Effects_on_Entertainment_Media_Preferences */
recommendation(X, Y, O) :- X == 'female', Y == 'happy', O = 'comedy, adventure, romance'. 
recommendation(X, Y, O) :- X == 'female', Y == 'sad', O = 'drama, animation'. 
recommendation(X, Y, O) :- X == 'female', Y == 'normal', O = 'horror, animation, romance'.
recommendation(X, Y, O) :- X == 'male', Y == 'happy', O = 'comedy, adventure, thriller'.
recommendation(X, Y, O) :- X == 'male', Y == 'sad', O = 'drama, comedy'. 
recommendation(X, Y, O) :- X == 'male', Y == 'normal', O = 'horror, animation, thriller'.
recommendation(X, Y, O).


/*The recommendation interactive procedure*/
recommend :-	
      write("Welcome! - Movie Recommender System"),nl,
      write("Please answer the following questions"),nl,
      write("It helps to find movies for your preference "),nl,
      write("What is your name ?, please end your answers with ."),nl,

      read(Name), nl,
      write("   Hello " ), write(Name),nl,
      write('   What is your sex? '),nl,
      write('1. female'),nl,
      write('2. male'),nl,
      read(Sex), nl,
      write('   What is your mood? '),nl,
      write('1. sad'),nl,
      write('2. happy'),nl,
      write('3. normal'),nl,
      read(Mood),nl,

      write('Thanks for your answers we recommend following movie genres:'),nl,
      recommendation(Sex, Mood, Genre),
      write(Genre),nl,nl,

	%% Ans1 - year
	%% Ans2 - genre
	%% Ans3 - duration
	%% Ans4 - production
	%% Ans5 - special feature 
	%% Ans6 - main character

/* Movie genre */

	write('   What movie genre do you prefer?'),nl,
	write('1. animation'),nl,
	write('2. drama'),nl,
	write('3. horror'),nl,
	write('4. comedy'),nl,
	write('5. romance'),nl,
	write('6. thriller'),nl,
        write('7. adventure'),nl,
	read(Ans2),nl,

/* Release-year */
	write('   Do you like old movies?'),nl,
        write('1. yes'),nl,
	write('2. no'),nl,
	read(A1),nl,
	(  A1 == 'no' -> write('   Something new?'),nl,
	   write('1. yes'),nl,
	   write('2. no'),nl,
	   read(A2),nl,
	(A2 == 'no' -> Ans1 = "decent"; Ans1 = "new");
	 Ans1 = "old"),


/* Additional features */

	(Ans2 == 'horror' ->
	write('   What are you afraid of?'),nl,
	write('1. monsters'),nl,
	write('2. ghosts'),nl,
	write('3. others'),nl,
	read(Ans5),nl;
        (Ans2 == 'adventure' -> write('   What type of movie adventure?'),nl,
	    write('1. fantasy'),nl,
            write('2. scifi'),nl,
	    write('3. family'),nl,
	    read(Ans5),nl; 
	    Ans5='others')), 

/* Duration */

	write('   How is your availability for watching movies?'),nl,
	write('- bit, for short movies'),nl,
	write('- many, for long movies'),nl,
	read(C1),nl,
	(  C1 == 'many' -> write('   Do you really have a lot of time?'),nl,
	write('1. yes'),nl,
	write('2. no'),nl,
	read(C2),nl,
	(C2 == 'yes' -> Ans3 = 'verylong'; Ans3 = 'long');
	Ans3 = 'short'),

/* Movie country language */

	write('  Do you like english movies?'),nl,
	write('1. yes'),nl,
        write('2. no'),nl,
	read(Ans4),nl,

/* Main actor */	

	write('   Is the main character a man?'),nl,
	write('1. yes'),nl,
	write('2. no'),nl,
	write('3. whatever'),nl,
	read(E1),nl,
	(E1 == 'yes' -> Ans6 = 'm';
	(E1 == 'no' -> Ans6 = 'w' ; 
         Ans6 = '')),

/*Movie production date */

	year(Y,Ans1,Ans2,Ans3,Ans4,Ans5,Ans6),
	write('You should watch this movie:'),nl,
        movie(Y,_,_,G,_,_,_,_,_,R),  
	write(Y), write(' ,rated '), write(R),nl,
        write(' Among '),
        get_details(Y, G, R),nl,nl.
       

/*Return other similar movie details*/
get_details(T, G, Rat):-
       movie(Y,_,_,G,_,_,_,_,_,R),
       (Y \= T), (R \= Rat),
       write('('), write(Y), write(', '), write(R), write(')'),nl,
       movie(T,_,_,G,_,_,_,_,_,Rat), !.


/***********************************/
/*mov_clustering() method*/
/*once() has been used to take a single movie a time and avoid redundancy*/
/*Here we may open the recommendation area by allowing other movie genres to be included*/
/*However a decision has been made to cover only those belonging to the same genre*/
mov_clustering(I, NC) :-
    write("The following is a combination of suitable movies that may be of your interest based on your previous answers"),nl,nl,
    once(movie(Y,_,_,Genre,_,_,_,_,_,R)),
    mov_clustering(I, [[Y, Genre, R]], NC).

/*At each clustering stage, number of clusters is the number of the remaining non-clustered movies*/
mov_clustering(I, FM, NC) :-
    (mov_not_clustered(FM, Genre, R_),
    push_movie(FM, R_, I, NUL) ->  mov_clustering(I, NUL, NC);
    NC = FM ).

/*FRom CFRS view point, high rated movies are most suitable to be viewed*/
 /* and may form similar clusters if they belongs to the same genre*/
/*In the following, not_member() method is applied on the formed clusters to do the clustering check;*/
 /*maplist() method is to make sure that not_member() is applied on all the clusters*/
mov_not_clustered(CLusters, Genre, R) :-
    movie(_,_,_,Genre,_,_,_,_,_,R),
    maplist(not_member(R), CLusters), maplist(not_member(Genre), CLusters).

/*Use of memberchk method to include/exclude a movie froma cluster, above both rating and genre need to be similar */
/*within one movie cluster*/
not_member(E, L) :- \+ memberchk(E, L).

/*Add movie to the cluster*/
push_movie([H|NC], R_, I, NUL) :-
    member(S, H),
    checkRating(S, R_, I), !,
    /*Operating on the head of the list, where if the rating check succeeds, */
     /* it's going to be added to the New Updated List 'NUL'*/
    NUL = [[R_|H]|NC].
/*Recursive call to treat the rest of the new cluster*/
push_movie([H|NC], R_, I, [H|Tail]) :- push_movie(NC, R_, I, Tail).
/*Trivial case: empty list*/
push_movie([], R_, I_, [[R_]]).

/*No rating interval is accepted below an interval of 5*/
/* Other criteria may be considered: */
checkRating(R1, R2, I) :-
     movie(_,_,_,Genre,_,_,_,_,_,R1),
     movie(_,_,_,Genre,_,_,_,_,_,R2),
     R1 \= R2,
     abs(R1 - R2) =< I.
 /**/


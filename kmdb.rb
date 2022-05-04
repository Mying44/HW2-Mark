# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!

Studio.destroy_all
Movie.destroy_all
Actor.destroy_all
Role.destroy_all


# Generate models and tables, according to the domain model.
# TODO!
# DONE 

# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
# TODO!

#INSERT INTO studios (name) VALUES ("Warner Bros.");
Warner_Bros = Studio.new
Warner_Bros["name"] = "Warner Bros."
Warner_Bros.save

Batman_Begins = Movie.new 
Batman_Begins["title"] = "Batman Begins"
Batman_Begins["year_released"] =  2005
Batman_Begins["rated"] = "PG-13"
Batman_Begins["studio_id"] = Warner_Bros["id"]
Batman_Begins.save

The_Dark_Knight = Movie.new 
The_Dark_Knight["title"] = "The Dark Knight"
The_Dark_Knight["year_released"] =  2008
The_Dark_Knight["rated"] = "PG-13"
The_Dark_Knight["studio_id"] = Warner_Bros["id"]
The_Dark_Knight.save

The_Dark_Knight_Rises = Movie.new 
The_Dark_Knight_Rises["title"] = "The Dark Knight Rises"
The_Dark_Knight_Rises["year_released"] =  2012
The_Dark_Knight_Rises["rated"] = "PG-13"
The_Dark_Knight_Rises["studio_id"] = Warner_Bros["id"]
The_Dark_Knight_Rises.save

Christian_Bale = Actor.new 
Christian_Bale["name"] = "Christian Bale"
Christian_Bale.save

Michael_Caine = Actor.new 
Michael_Caine["name"] = "Michael Caine"
Michael_Caine.save

Liam_Neeson = Actor.new 
Liam_Neeson["name"] = "Liam Neeson"
Liam_Neeson.save

Katie_Holmes = Actor.new 
Katie_Holmes["name"] = "Katie Holmes"
Katie_Holmes.save

Gary_Oldman = Actor.new 
Gary_Oldman["name"] = "Gary Oldman"
Gary_Oldman.save

Heath_Ledger = Actor.new 
Heath_Ledger["name"] = "Heath Ledger"
Heath_Ledger.save

Aaron_Eckhart = Actor.new 
Aaron_Eckhart["name"] = "Aaron Eckhart"
Aaron_Eckhart.save

Maggie_Gyllenhaal = Actor.new 
Maggie_Gyllenhaal["name"] = "Maggie Gyllenhaal"
Maggie_Gyllenhaal.save

Tom_Hardy = Actor.new 
Tom_Hardy["name"] = "Tom Hardy"
Tom_Hardy.save

Joseph_Gordon_Levitt = Actor.new 
Joseph_Gordon_Levitt["name"] = "Joseph Gordon Levitt"
Joseph_Gordon_Levitt.save

Anne_Hathaway = Actor.new 
Anne_Hathaway["name"] = "Anne Hathaway"
Anne_Hathaway.save

Bruce_Wayne = Role.new
Bruce_Wayne["character_name"]="Bruce Wayne"
Bruce_Wayne["movie_id"] = Batman_Begins["id"]
Bruce_Wayne["actor_id"] = Christian_Bale["id"]
Bruce_Wayne.save

Alfred = Role.new
Alfred["character_name"]="Alfred"
Alfred["movie_id"] = Batman_Begins["id"]
Alfred["actor_id"] = Michael_Caine["id"]
Alfred.save

Ras = Role.new
Ras["character_name"]="Ra's Al Ghul"
Ras["movie_id"] = Batman_Begins["id"]
Ras["actor_id"] = Liam_Neeson["id"]
Ras.save

Rachel = Role.new
Rachel["character_name"]="Rachel Dawes"
Rachel["movie_id"] = Batman_Begins["id"]
Rachel["actor_id"] = Katie_Holmes["id"]
Rachel.save

Gordon = Role.new
Gordon["character_name"]="Commissioner Gordon"
Gordon["movie_id"] = Batman_Begins["id"]
Gordon["actor_id"] = Gary_Oldman["id"]
Gordon.save

Bruce_Wayne = Role.new
Bruce_Wayne["character_name"]="Bruce Wayne"
Bruce_Wayne["movie_id"] = The_Dark_Knight["id"]
Bruce_Wayne["actor_id"] = Christian_Bale["id"]
Bruce_Wayne.save

Joker = Role.new
Joker["character_name"]="Heath Ledger"
Joker["movie_id"] = The_Dark_Knight["id"]
Joker["actor_id"] = Heath_Ledger["id"]
Joker.save

Harvey_Dent = Role.new
Harvey_Dent["character_name"]="Harvey Dent"
Harvey_Dent["movie_id"] = The_Dark_Knight["id"]
Harvey_Dent["actor_id"] = Aaron_Eckhart["id"]
Harvey_Dent.save

Alfred = Role.new
Alfred["character_name"]="Alfred"
Alfred["movie_id"] = The_Dark_Knight["id"]
Alfred["actor_id"] = Michael_Caine["id"]
Alfred.save

Rachel = Role.new
Rachel["character_name"]="Alfred"
Rachel["movie_id"] = The_Dark_Knight["id"]
Rachel["actor_id"] = Maggie_Gyllenhaal["id"]
Rachel.save

Bruce_Wayne = Role.new
Bruce_Wayne["character_name"]="Bruce Wayne"
Bruce_Wayne["movie_id"] = The_Dark_Knight_Rises["id"]
Bruce_Wayne["actor_id"] = Christian_Bale["id"]
Bruce_Wayne.save

Commissioner = Role.new
Commissioner["character_name"]="Commissioner Gordon"
Commissioner["movie_id"] = The_Dark_Knight_Rises["id"]
Commissioner["actor_id"] = Gary_Oldman["id"]
Commissioner.save

Bane = Role.new
Bane["character_name"]="Bane"
Bane["movie_id"] = The_Dark_Knight_Rises["id"]
Bane["actor_id"] = Tom_Hardy["id"]
Bane.save

John_Blake = Role.new
John_Blake["character_name"]="John Blake"
John_Blake["movie_id"] = The_Dark_Knight_Rises["id"]
John_Blake["actor_id"] = Joseph_Gordon_Levitt["id"]
John_Blake.save

Selina = Role.new
Selina["character_name"]="Selina Kyle"
Selina["movie_id"] = The_Dark_Knight_Rises["id"]
Selina["actor_id"] = Anne_Hathaway["id"]
Selina.save

#puts Gary_Oldman["id"]
# puts "There are #{Movie.all.count} Movies."
# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output.
# TODO!
movies=Movie.all
#puts movies.inspect
for movie in movies 
   # puts movie.inspect
    moviestudio = Studio.find_by({"id" => movie["studio_id"]})
    
    puts " #{movie["title"]} - #{movie["year_released"]} - #{movie["rated"]} - #{moviestudio.name} "
end

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!

for role in roles 
    # puts movie.inspect
     cast = movie.find_by({"id" => movie["movie_id"]})
     
     puts " #{movie["title"]} - #{movie["year_released"]} - #{movie["rated"]} - #{moviestudio.name} "
 end

#from Roles and Find Actors / Movies - they are like studios
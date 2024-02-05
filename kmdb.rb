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
Model.destroy_all

# Generate models and tables, according to the domain model.
rails generate model Movies
    t.string "title"
    t.string "year_released"
    t.string "rating"
    t.string "studio"
rails db:migrate

rails generate model Top_Cast
    t.string "title"
    t.string "actor"
    t.string "role"
rails db:migrate

# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.

# for Movies table:
new_movie= Movies.new
new_movie["title"] = "Batman Begins"
new_movie["year_released"] = "2005"
new_movie["rating"] = "PG-13"
new_movie["studio"] = "Warner Bros."
new_movie.save

new_movie= Movies.new
new_movie["title"] = "The Dark Knight"
new_movie["year_released"] = "2008"
new_movie["rating"] = "PG-13"
new_movie["studio"] = "Warner Bros."
new_movie.save

new_movie= Movies.new
new_movie["title"] = "The Dark Knight Rises"
new_movie["year_released"] = "2012"
new_movie["rating"] = "PG-13"
new_movie["studio"] = "Warner Bros."
new_movie.save

# for Top_Cast table:

new_cast_member = Top_Cast.new
new_cast_member["title"] = "Batman Begins"
new_cast_member["actor"] = "Christian Bale"
new_cast_member["role"] = "Bruce Wayne"
new_cast_member.save

new_cast_member = Top_Cast.new
new_cast_member["title"] = "Batman Begins"
new_cast_member["actor"] = "Michael Cane"
new_cast_member["role"] = "Alfred"
new_cast_member.save

new_cast_member = Top_Cast.new
new_cast_member["title"] = "Batman Begins"
new_cast_member["actor"] = "Liam Neeson"
new_cast_member["role"] = "Ra's Al Ghul"
new_cast_member.save

new_cast_member = Top_Cast.new
new_cast_member["title"] = "Batman Begins"
new_cast_member["actor"] = "Katie Holmes"
new_cast_member["role"] = "Rachel Dawes"
new_cast_member.save

new_cast_member = Top_Cast.new
new_cast_member["title"] = "Batman Begins"
new_cast_member["actor"] = "Gary Oldman"
new_cast_member["role"] = "Commissioner Gordon"
new_cast_member.save

new_cast_member = Top_Cast.new
new_cast_member["title"] = "The Dark Knight"
new_cast_member["actor"] = "Christian Bale"
new_cast_member["role"] = "Bruce Wayne"
new_cast_member.save

new_cast_member = Top_Cast.new
new_cast_member["title"] = "The Dark Knight"
new_cast_member["actor"] = "Heath Ledger"
new_cast_member["role"] = "Joker"
new_cast_member.save

new_cast_member = Top_Cast.new
new_cast_member["title"] = "The Dark Knight"
new_cast_member["actor"] = "Aaron Eckhart"
new_cast_member["role"] = "Harvey Dent"
new_cast_member.save

new_cast_member = Top_Cast.new
new_cast_member["title"] = "The Dark Knight"
new_cast_member["actor"] = "Michael Caine"
new_cast_member["role"] = "Alfred"
new_cast_member.save

new_cast_member = Top_Cast.new
new_cast_member["title"] = "The Dark Knight"
new_cast_member["actor"] = "Maggie Gyllenhaal"
new_cast_member["role"] = "Rachel Dawes"
new_cast_member.save

new_cast_member = Top_Cast.new
new_cast_member["title"] = "The Dark Knight"
new_cast_member["actor"] = "Maggie Gyllenhaal"
new_cast_member["role"] = "Rachel Dawes"
new_cast_member.save

new_cast_member = Top_Cast.new
new_cast_member["title"] = "The Dark Knight Rises"
new_cast_member["actor"] = "Christian Bale"
new_cast_member["role"] = "Bruce Wayne"
new_cast_member.save

new_cast_member = Top_Cast.new
new_cast_member["title"] = "The Dark Knight Rises"
new_cast_member["actor"] = "Gary Oldman"
new_cast_member["role"] = "Commissioner Gordon"
new_cast_member.save

new_cast_member = Top_Cast.new
new_cast_member["title"] = "The Dark Knight Rises"
new_cast_member["actor"] = "Tom Hardy"
new_cast_member["role"] = "Bane"
new_cast_member.save

new_cast_member = Top_Cast.new
new_cast_member["title"] = "The Dark Knight Rises"
new_cast_member["actor"] = "Joseph Gordon-Levitt"
new_cast_member["role"] = "John Blake"
new_cast_member.save

new_cast_member = Top_Cast.new
new_cast_member["title"] = "The Dark Knight Rises"
new_cast_member["actor"] = "Anne Hathaway"
new_cast_member["role"] = "Selina Kyle"
new_cast_member.save

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output.
# TODO!

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!

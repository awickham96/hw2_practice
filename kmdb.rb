# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# Studio.destroy_all
# Movie.destroy_all
# Actor.destroy_all
# Role.destroy_all

# Generate models and tables, according to the domain model.
rails generate model Studio
    t.string "name"
rails db:migrate

rails generate model Movie
    t.string "title"
    t.string "year_released"
    t.string "rating"
    t.string "studio_id"
rails db:migrate

rails generate model Actor
    t.string "name"
rails db:migrate

rails generate model Role
    t.string "character_name"
    t.string "movie_id"
    t.string "actor_id"
rails db:migrate

# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.

# for Studios table

puts "There are #{Studio.all.count} studios"

new_studio = Studio.new
new_studio["name"] = "Warner Bros."
new_studio.save

puts "There are #{Studio.all.count} studios"

# for Movies table:

puts "There are #{Movie.all.count} movies"

WarnerBros = Studio.find.by({"name"=> "Warner Bros."})

new_movie= Movie.new
new_movie["title"] = "Batman Begins"
new_movie["year_released"] = "2005"
new_movie["rating"] = "PG-13"
new_movie["studio_id"] = WarnerBros ["id"]
new_movie.save

new_movie= Movie.new
new_movie["title"] = "The Dark Knight"
new_movie["year_released"] = "2008"
new_movie["rating"] = "PG-13"
new_movie["studio_id"] = WarnerBros ["id"]
new_movie.save

new_movie= Movie.new
new_movie["title"] = "The Dark Knight Rises"
new_movie["year_released"] = "2012"
new_movie["rating"] = "PG-13"
new_movie["studio_id"] = WarnerBros ["id"]
new_movie.save

puts "There are #{Movie.all.count} movies"

# for Actor table:

puts "There are #{Actor.all.count} actors"

new_actor = Actor.new
new_actor["name"] = "Christian Bale"
new_actor.save

new_actor = Actor.new
new_actor["name"] = "Michael Cane"
new_actor.save

new_actor = Actor.new
new_actor["name"] = "Liam Neeson"
new_actor.save

new_actor = Actor.new
new_actor["name"] = "Katie Holmes"
new_actor.save

new_actor = Actor.new
new_actor["name"] = "Gary Oldman"
new_actor.save

new_actor = Actor.new
new_actor["name"] = "Heath Ledger"
new_actor.save

new_actor = Actor.new
new_actor["name"] = "Aaron Eckhart"
new_actor.save

new_actor = Actor.new
new_actor["name"] = "Maggie Gyllenhaal"
new_actor.save

new_actor = Actor.new
new_actor["name"] = "Tom Hardy"
new_actor.save

new_actor = Actor.new
new_actor["name"] = "Joseph Gordon-Levitt"
new_actor.save

new_actor = Actor.new
new_actor["name"] = "Anne Hathaway"
new_actor.save

puts "There are #{Actor.all.count} actors"

# for Role table

batmanBegins = Movie.find.by ({"title" => "Batman Begins"})
cBale = Actor.find.by ({"name" => "Christian Bale"})
role = Role.new
role["character_name"] = "Bruce Wayne"
role["movie_id"] = batmanBegins ["id"]
role["actor_id"] = cBale ["id"]
role.save

batmanBegins = Movie.find.by ({"title" => "Batman Begins"})
mCaine = Actor.find.by ({"name" => "Michael Caine"})
role = Role.new
role["character_name"] = "Alfred"
role["movie_id"] = batmanBegins ["id"]
role["actor_id"] = mCaine ["id"]
role.save

batmanBegins = Movie.find.by ({"title" => "Batman Begins"})
lNeeson = Actor.find.by ({"name" => "Liam Neeson"})
role = Role.new
role["character_name"] = "Ra's Al Ghul"
role["movie_id"] = batmanBegins ["id"]
role["actor_id"] = lNeeson ["id"]
role.save

batmanBegins = Movie.find.by ({"title" => "Batman Begins"})
kHolmes = Actor.find.by ({"name" => "Katie Holmes"})
role = Role.new
role["character_name"] = "Rachel Dawes"
role["movie_id"] = batmanBegins ["id"]
role["actor_id"] = kHolmes ["id"]
role.save

batmanBegins = Movie.find.by ({"title" => "Batman Begins"})
gOldman = Actor.find.by ({"name" => "Gary Oldman"})
role = Role.new
role["character_name"] = "Commissioner Gordon"
role["movie_id"] = batmanBegins ["id"]
role["actor_id"] = gOldman ["id"]
role.save

darkKnight = Movie.find.by ({"title" => "The Dark Knight"})
cBale = Actor.find.by ({"name" => "Christian Bale"})
role = Role.new
role["character_name"] = "Bruce Wayne"
role["movie_id"] = darkKnight ["id"]
role["actor_id"] = cBale ["id"]
role.save

darkKnight = Movie.find.by ({"title" => "The Dark Knight"})
hLedger = Actor.find.by ({"name" => "Heath Ledger"})
role = Role.new
role["character_name"] = "Joker"
role["movie_id"] = darkKnight ["id"]
role["actor_id"] = hLedger ["id"]
role.save

# new_cast_member = Top_Cast.new
# new_cast_member["title"] = "Batman Begins"
# new_cast_member["role"] = "Alfred"
# new_cast_member.save

# new_cast_member = Top_Cast.new
# new_cast_member["title"] = "Batman Begins"
# new_cast_member["actor"] = "Liam Neeson"
# new_cast_member["role"] = "Ra's Al Ghul"
# new_cast_member.save

# new_cast_member = Top_Cast.new
# new_cast_member["title"] = "Batman Begins"
# new_cast_member["actor"] = "Katie Holmes"
# new_cast_member["role"] = "Rachel Dawes"
# new_cast_member.save

# new_cast_member = Top_Cast.new
# new_cast_member["title"] = "Batman Begins"
# new_cast_member["actor"] = "Gary Oldman"
# new_cast_member["role"] = "Commissioner Gordon"
# new_cast_member.save

# new_cast_member = Top_Cast.new
# new_cast_member["title"] = "The Dark Knight"
# new_cast_member["actor"] = "Christian Bale"
# new_cast_member["role"] = "Bruce Wayne"
# new_cast_member.save

# new_cast_member = Top_Cast.new
# new_cast_member["title"] = "The Dark Knight"
# new_cast_member["actor"] = "Heath Ledger"
# new_cast_member["role"] = "Joker"
# new_cast_member.save

# new_cast_member = Top_Cast.new
# new_cast_member["title"] = "The Dark Knight"
# new_cast_member["actor"] = "Aaron Eckhart"
# new_cast_member["role"] = "Harvey Dent"
# new_cast_member.save

# new_cast_member = Top_Cast.new
# new_cast_member["title"] = "The Dark Knight"
# new_cast_member["actor"] = "Michael Caine"
# new_cast_member["role"] = "Alfred"
# new_cast_member.save

# new_cast_member = Top_Cast.new
# new_cast_member["title"] = "The Dark Knight"
# new_cast_member["actor"] = "Maggie Gyllenhaal"
# new_cast_member["role"] = "Rachel Dawes"
# new_cast_member.save

# new_cast_member = Top_Cast.new
# new_cast_member["title"] = "The Dark Knight"
# new_cast_member["actor"] = "Maggie Gyllenhaal"
# new_cast_member["role"] = "Rachel Dawes"
# new_cast_member.save

# new_cast_member = Top_Cast.new
# new_cast_member["title"] = "The Dark Knight Rises"
# new_cast_member["actor"] = "Christian Bale"
# new_cast_member["role"] = "Bruce Wayne"
# new_cast_member.save

# new_cast_member = Top_Cast.new
# new_cast_member["title"] = "The Dark Knight Rises"
# new_cast_member["actor"] = "Gary Oldman"
# new_cast_member["role"] = "Commissioner Gordon"
# new_cast_member.save

# new_cast_member = Top_Cast.new
# new_cast_member["title"] = "The Dark Knight Rises"
# new_cast_member["actor"] = "Tom Hardy"
# new_cast_member["role"] = "Bane"
# new_cast_member.save

# new_cast_member = Top_Cast.new
# new_cast_member["title"] = "The Dark Knight Rises"
# new_cast_member["actor"] = "Joseph Gordon-Levitt"
# new_cast_member["role"] = "John Blake"
# new_cast_member.save

# new_cast_member = Top_Cast.new
# new_cast_member["title"] = "The Dark Knight Rises"
# new_cast_member["actor"] = "Anne Hathaway"
# new_cast_member["role"] = "Selina Kyle"
# new_cast_member.save

# # Prints a header for the movies output
# puts "Movies"
# puts "======"
# puts ""

# # Query the movies data and loop through the results to display the movies output.

# for new_movie in Movie
#   title = new_movie["title"]
#   year_released = new_movie["year_released"]
#   rating = new_movie["rating"]
#   studio = new_movie["studio"]
#   # display the Movie table
#   puts "#{title} #{year_released} #{rating} #{studio}"
# end

# # Prints a header for the cast output
# puts ""
# puts "Top Cast"
# puts "========"
# puts ""

# # Query the cast data and loop through the results to display the cast output for each movie.

# for new_cast_member in Top_Cast
#     title = new_cast_member["title"]
#     actor = new_cast_member["actor"]
#     role = new_cast_member["role"]
#     # display the Top Cast Table table
#     puts "#{title} #{actor} #{role}"
#   end

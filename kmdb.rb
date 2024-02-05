# Delete existing data, so you'll start fresh each time this script is run.
Studio.destroy_all
Movie.destroy_all
Actor.destroy_all
Role.destroy_all

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

WarnerBros = Studio.find_by({"name"=> "Warner Bros."})

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

puts "There are #{Roles.all.count} roles"

batmanBegins = Movie.find_by ({"title" => "Batman Begins"})
cBale = Actor.find_by ({"name" => "Christian Bale"})
role = Role.new
role["character_name"] = "Bruce Wayne"
role["movie_id"] = batmanBegins ["id"]
role["actor_id"] = cBale ["id"]
role.save

batmanBegins = Movie.find_by ({"title" => "Batman Begins"})
mCaine = Actor.find_by ({"name" => "Michael Caine"})
role = Role.new
role["character_name"] = "Alfred"
role["movie_id"] = batmanBegins ["id"]
role["actor_id"] = mCaine ["id"]
role.save

batmanBegins = Movie.find_by ({"title" => "Batman Begins"})
lNeeson = Actor.find_by ({"name" => "Liam Neeson"})
role = Role.new
role["character_name"] = "Ra's Al Ghul"
role["movie_id"] = batmanBegins ["id"]
role["actor_id"] = lNeeson ["id"]
role.save

batmanBegins = Movie.find_by ({"title" => "Batman Begins"})
kHolmes = Actor.find_by ({"name" => "Katie Holmes"})
role = Role.new
role["character_name"] = "Rachel Dawes"
role["movie_id"] = batmanBegins ["id"]
role["actor_id"] = kHolmes ["id"]
role.save

batmanBegins = Movie.find_by ({"title" => "Batman Begins"})
gOldman = Actor.find_by ({"name" => "Gary Oldman"})
role = Role.new
role["character_name"] = "Commissioner Gordon"
role["movie_id"] = batmanBegins ["id"]
role["actor_id"] = gOldman ["id"]
role.save

darkKnight = Movie.find_by ({"title" => "The Dark Knight"})
cBale = Actor.find_by ({"name" => "Christian Bale"})
role = Role.new
role["character_name"] = "Bruce Wayne"
role["movie_id"] = darkKnight ["id"]
role["actor_id"] = cBale ["id"]
role.save

darkKnight = Movie.find_by ({"title" => "The Dark Knight"})
hLedger = Actor.find_by ({"name" => "Heath Ledger"})
role = Role.new
role["character_name"] = "Joker"
role["movie_id"] = darkKnight ["id"]
role["actor_id"] = hLedger ["id"]
role.save

darkKnight = Movie.find_by ({"title" => "The Dark Knight"})
aEckhart = Actor.find_by ({"name" => "Aaron Eckhart"})
role = Role.new
role["character_name"] = "Harvey Dent"
role["movie_id"] = darkKnight ["id"]
role["actor_id"] = aEckhart ["id"]
role.save

darkKnight = Movie.find_by ({"title" => "The Dark Knight"})
mCaine = Actor.find_by ({"name" => "Michael Caine"})
role = Role.new
role["character_name"] = "Alfred"
role["movie_id"] = darkKnight ["id"]
role["actor_id"] = mCaine ["id"]
role.save

darkKnight = Movie.find_by ({"title" => "The Dark Knight"})
mGyllenhaal = Actor.find_by ({"name" => "Maggie Gyllenhaal"})
role = Role.new
role["character_name"] = "Rachel Dawes"
role["movie_id"] = darkKnight ["id"]
role["actor_id"] = mGyllenhaal ["id"]
role.save

darkKnightRises = Movie.find.by ({"title" => "The Dark Knight Rises"})
cBale = Actor.find.by ({"name" => "Christian Bale"})
role = Role.new
role["character_name"] = "Bruce Wayne"
role["movie_id"] = darkKnightRises ["id"]
role["actor_id"] = cBale ["id"]
role.save

darkKnightRises = Movie.find.by ({"title" => "The Dark Knight Rises"})
gOldman = Actor.find.by ({"name" => "Gary Oldman"})
role = Role.new
role["character_name"] = "Commissioner Gordon"
role["movie_id"] = darkKnightRises ["id"]
role["actor_id"] = gOldman ["id"]
role.save

darkKnightRises = Movie.find_by ({"title" => "The Dark Knight Rises"})
tHardy = Actor.find_by ({"name" => "Tom Hardy"})
role = Role.new
role["character_name"] = "Bane"
role["movie_id"] = darkKnightRises ["id"]
role["actor_id"] = tHardy ["id"]
role.save

darkKnightRises = Movie.find_by ({"title" => "The Dark Knight Rises"})
jGordonLevitt = Actor.find_by ({"name" => "Joseph Gordon-Levitt"})
role = Role.new
role["character_name"] = "John Blake"
role["movie_id"] = darkKnightRises ["id"]
role["actor_id"] = jGordonLevitt ["id"]
role.save

darkKnightRises = Movie.find_by ({"title" => "The Dark Knight Rises"})
aHathaway = Actor.find_by ({"name" => "Anne Hathaway"})
role = Role.new
role["character_name"] = "Selina Kyle"
role["movie_id"] = darkKnightRises ["id"]
role["actor_id"] = aHathaway ["id"]
role.save

puts "There are #{Roles.all.count} roles"

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output.

for new_movie in Movie 
    title = Movie["title"]
    year_released = Movie["year_released"]
    rating = Movie["rating"]
    studio = Studio["name"]
    puts "#{title} #{year_released} #{rating} #{studio}"
end

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie.

for role in Role 
    title = Movie["title"]
    actor = Actor["name"]
    character = Role["character_name"]
    puts "#{title} #{actor} #{character}"
end

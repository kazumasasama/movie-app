require "http"

print "Enter a movie id or enter \"all\" to print all movies: "
id = gets.chomp

if id == "all"
  res = HTTP.get("http://localhost:3000/movies")
  pp res.parse
else
  id = id.to_i
  p id
  res = HTTP.get("http://localhost:3000/movie/#{id}")
  pp res.parse
end
movie_lists = [
  {
    "name" => "New Releases",
    "videos" => [
      {
        "id" => 70111470,
        "title" => "Die Hard",
        "boxarts" => [
          { "width" => 150, "height" => 200, "url" => "http://cdn-0.nflximg.com/images/2891/DieHard150.jpg" },
          { "width" => 200, "height" => 200, "url" => "http://cdn-0.nflximg.com/images/2891/DieHard200.jpg" }
        ],
        "url" => "http://api.netflix.com/catalog/titles/movies/70111470",
        "rating" => 4.0,
        "bookmark" => []
      },
      {
        "id" => 654356453,
        "title" => "Bad Boys",
        "boxarts" => [
          { "width" => 200, "height" => 200, "url" => "http://cdn-0.nflximg.com/images/2891/BadBoys200.jpg" },
          { "width" => 140, "height" => 200, "url" => "http://cdn-0.nflximg.com/images/2891/BadBoys140.jpg" }

        ],
        "url" => "http://api.netflix.com/catalog/titles/movies/70111470",
        "rating" => 5.0,
        "bookmark" => [{ "id" => 432534, "time" => 65876586 }]
      }
    ]
  },
  {
    "name" => "Thrillers",
    "videos" => [
      {
        "id" => 65432445,
        "title" => "The Chamber",
        "boxarts" => [
          { "width" => 130, "height" => 200, "url" => "http://cdn-0.nflximg.com/images/2891/TheChamber130.jpg" },
          { "width" => 200, "height" => 200, "url" => "http://cdn-0.nflximg.com/images/2891/TheChamber200.jpg" }
        ],
        "url" => "http://api.netflix.com/catalog/titles/movies/70111470",
        "rating" => 4.0,
        "bookmark" => []
      },
      {
        "id" => 675465,
        "title" => "Fracture",
        "boxarts" => [
          { "width" => 200, "height" => 200, "url" => "http://cdn-0.nflximg.com/images/2891/Fracture200.jpg" },
          { "width" => 120, "height" => 200, "url" => "http://cdn-0.nflximg.com/images/2891/Fracture120.jpg" },
          { "width" => 300, "height" => 200, "url" => "http://cdn-0.nflximg.com/images/2891/Fracture300.jpg" }
        ],
        "url" => "http://api.netflix.com/catalog/titles/movies/70111470",
        "rating" => 5.0,
        "bookmark" => [{ "id" => 432534, "time" => 65876586 }]
      }
    ]
  }
]

simplified_movies = []

movie_lists.each do |movie_list|
  movie_list["videos"].each do |movie|
    id = movie["id"]
    title = movie["title"]
    min_width = movie["boxarts"][0]["width"]
    smallest_url = movie["boxarts"][0]["url"]
    movie["boxarts"].each do |boxart|
      if boxart["width"] < min_width
        min_width = boxart["width"]
        smallest_url = boxart["url"]
      end
    end
    simplified_movies << {"id" => id, "title" => title, "boxart_url" => smallest_url }
  end
end

p simplified_movies
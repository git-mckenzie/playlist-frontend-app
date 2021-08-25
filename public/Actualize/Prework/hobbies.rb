people = [
  {
    "first_name" => "Robert",
    "last_name" => "Garcia", 
    "hobbies" => ["basketball", "chess", "phone tag"]
   },
   {
    "first_name" => "Molly",
    "last_name" => "Barker",
    "hobbies" => ["programming", "reading", "jogging"]
   },
   {
    "first_name" => "Kelly",
    "last_name" => "Miller",
    "hobbies" => ["cricket", "baking", "stamp collecting"]
   }
]

index_people = 0
while index_people < people.length
  index_hobbies = 0
  while index_hobbies < people[index_people]["hobbies"].length
    puts people[index_people]["hobbies"][index_hobbies].upcase
    index_hobbies += 1
  end
  index_people += 1
end
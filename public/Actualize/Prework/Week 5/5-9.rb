# Write a loop to give each person an email address that consists of their first name + last name @ gmail.com. For example, Robert Garcia will have an email of robertgarcia@gmail.com.

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

index = 0

while
  index < people.length
  people[index]["email"] = people[index]["first_name"].downcase + people[index]["last_name"].downcase + "@gmail.com"
  index += 1   
end

p people
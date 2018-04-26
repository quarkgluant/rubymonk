a = "tom"
b = "jerry"
superheroes = [a,b]
b.gsub!("jerry", "batman")

## autre solution, passant par les références
a = "tom"
b = "jerry"
superheroes = [a,b]
#puts b.object_id
b = "batman".dup

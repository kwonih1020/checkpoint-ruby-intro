# collections

# 1. Create a variable `point1` and assign it a hash representing a coordinate with keys `:x` and `:y` which have integer values
point1 = {x:3, y:13}
# 2. Print the y value
puts point1[:y]
# 3. Make an array, `points`, that includes `point1` and two more points (`points.length` should be 3)
points = [point1, {x:4, y:14}, {x:5, y:15}]
# 4. Use `.each` to print the y value of each point
points.each do |numbers|
  puts numbers[:y]
end
# 5. Use `.each_with_index` and string interpolation to print for each point "The point at index <index> has coordinates {x: <x-val>, y: <y-val>}"
points.each_with_index do |numbers, index|
  puts "The point at index #{index} has coordinates #{numbers}"
end
# 6. Create an array and call it `distances_from_origin` by mapping over the points with the `.map` method and returning the distance between the point and origin, (0,0).
# Distance from can be found with the equation `distance_from_origin = Math.sqrt(x_val ** 2 + y_val ** 2)`
distances_from_origin = []
points.map do |number|
  distance_from_origin = Math.sqrt(number[:x] ** 2 + number[:y] ** 2)
  distances_from_origin << distance_from_origin
end

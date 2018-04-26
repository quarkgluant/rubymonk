def sum_of_cubes(a, b)
  # Write your code here
  (a..b).inject(0) {|sum, n| sum += n**3 }
end

## autre solution
def sum_of_cubes(a, b)
  # Write your code here
  (a..b).inject(0){|accu, nb| accu + nb * nb * nb}
end

def benchmark(&block)
  # your code here!
  begin_time = Time.now
  block.call
  end_time = Time.now
  end_time - begin_time

end

time_taken = benchmark do
  sleep 0.1
end
puts "Time taken #{time_taken}"

#### Autre Solution
def benchmark
  begin_time = Time.now
  yield if block_given?
  Time.now - begin_time
end

time_taken = benchmark do
  sleep 0.1
end
puts "Time taken #{time_taken}"


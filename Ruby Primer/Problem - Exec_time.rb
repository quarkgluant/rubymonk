def exec_time(proc)
  # your code here
  before_time = Time.now
  proc.call()
  after_time = Time.now
  after_time - before_time  
end
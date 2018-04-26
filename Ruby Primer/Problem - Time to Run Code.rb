def exec_time(proc)
  start_time = Time.now
  proc.call
  Time.now - start_time
end
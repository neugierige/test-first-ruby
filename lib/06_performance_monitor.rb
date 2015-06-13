def measure(num = 1)
  start = Time.now.to_f
  num.times { yield }
  stop = Time.now.to_f
  (stop-start) / num
end
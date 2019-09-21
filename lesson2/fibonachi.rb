fibo_arr = [0, 1]
next_value = 1

while next_value < 100
  fibo_arr.push(next_value)
  next_value = fibo_arr[-1] + fibo_arr[-2]
end

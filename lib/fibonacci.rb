def fibs(length)
  sequence = []
  for i in 0 .. length - 1
    if i == 0 || i == 1
      sequence.push(i)
    else
      sequence.push(sequence[-1] + sequence[-2])
    end
  end
  sequence
end

def fibs_rec(length)

  return [0] if length == 0
  return [0, 1] if length == 1
  sequence = fibs_rec(length - 1)
  
  sequence << sequence[-1] + sequence[-2]
  return sequence[0..length - 1]
end

puts fibs(8)
puts fibs_rec(8)
def exp(b, n)
  return 1 if n == 0
  b * exp(b, n - 1)
end

def exp2(b, n)
  return 1 if n == 0
  return b if n == 1

  if n.even?
    exp2(b, (n / 2)) * exp2(b, (n / 2))
  else
    b * exp2(b, (n - 1) / 2) * exp2(b, (n - 1) / 2)
  end
end

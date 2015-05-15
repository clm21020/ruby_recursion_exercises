def fibonacci(n)
  return [0] if n == 0
  return [0, 1] if n == 1

  fibonacci(n - 1) << fibonacci(n - 1)[-2..-1].inject(&:+)
end
# 
# def fibonacci(n)
#   return [0] if n == 0
#   return [0, 1] if n == 1
#
#   last = fibonacci(n - 1)
#   last << last[-2..-1].inject(&:+)
# end

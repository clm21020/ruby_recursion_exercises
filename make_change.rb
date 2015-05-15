# def make_change(total_money, coin_values)
#
# end

def american_change(total, coin_values)
  change = []
  return change if coin_values.empty?

  coin = coin_values.shift
  (total / coin).times { change << coin }

  change + american_change(total % coin, coin_values)
end

def american_change2(total, coin_values)
  return [] if coin_values.empty?

  coin = coin_values[0]
  if total >= coin
    [coin] + american_change2(total - coin, coin_values)
  else
    american_change2(total, coin_values[1..-1])
  end
end

def make_change(total, coin_values)
  coin_values = coin_values.sort.reverse
  return [] if total < coin_values[-1]

  smallest_change = nil

  coin_values.each do |coin|
    next if total < coin
    try = [coin] + make_change(total - coin, coin_values)
    if smallest_change.nil? || try.length < smallest_change.length
      smallest_change = try
    end
  end

  smallest_change
end

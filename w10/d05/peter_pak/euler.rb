# euler problem 4

max_product = 0
i_j = []

999.downto(100) do |i|
  999.downto(100) do |j|
    product = i * j
    if product.to_s.split('').reverse.join('').to_i == product && product > max_product
      max_product = product
      i_j.push(i).push(j)
    end
  end
end

puts i_j
puts max_product

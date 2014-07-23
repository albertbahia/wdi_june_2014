


def rejector(collection_of_values)

  new_array = collection_of_values.map { |value| value.to_i }
  new_array = new_array.select { |value| value.even? }
  new_array.reduce(:+)

end

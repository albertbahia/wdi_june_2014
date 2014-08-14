require 'pry'
app_cache = {}

# takes a key and a block of code to run
def cache(key, action, cache_store)
  binding.pry
  cache_key = key.to_s + "_" + action.to_s
  if cache_store[cache_key]
    return cache_store[cache_key]
  else
    result = yield # run the block
    cache_store[cache_key] = result # store it in our cache
    return result
  end
end

##############
# MY NAME
##############

cache("my name", "full", app_cache) do
  sleep 2
  "Adam Bray"
end

cache("my name", "full", app_cache) do
  sleep 2
  "Adam Bray"
end

##############
# HARI'S NAME
##############
cache("hari's name", "full", app_cache) do
  sleep 2
  "Hariharan Mohanraj"
end

cache("hari's name", "full", app_cache) do
  sleep 2
  "Hariharan Mohanraj"
end

##############
# 5 Cubed
##############
cache(5, "cubed", app_cache) do
  sleep 2
  5*5*5
end

cache(5, "cubed", app_cache) do
  sleep 2
  5*5*5
end

##############
# 5 sqrt
##############

cache(5, "sq root", app_cache) do
  sleep 2
  Math.sqrt(5)
end

cache(5, "sq root", app_cache) do
  sleep 2
  Math.sqrt(5)
end

##############
# MY NAME
##############
cache("my name", "sassy" app_cache) do
  sleep 2
  "it's whatever I want"
end

cache("my name", "sassy" app_cache) do
  sleep 2
  "it's whatever I want"
end






class Car
  attr_accessor :name, :hp

  def initialize(name, hp)
    @name = name
    @hp = hp
  end

  def calculate_gigawatts
    sleep 2 #simulate long calculation
    return (@hp % 6) * 3.14159
  end

  def info
    "#{name} has #{calculate_gigawatts} gigawatts"
  end

end


car1 = Car.new("Delorian", 1000)
car2 = Car.new("Camry", 30)

cache(car1, "calc_gigawatts", app_cache) do
  car1.calculate_gigawatts
end

cache(car2, "calc_gigawatts", app_cache) do
  car2.calculate_gigawatts
end

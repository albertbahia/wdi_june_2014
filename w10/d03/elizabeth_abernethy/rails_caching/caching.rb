
# create a "global" variable to store our results
app_cache = {}

# takes a key and a block of code to run
def cache(key, cache_store)
  p cache_store
  if cache_store[key] # does cache_store have value = key?
    return cache_store[key] # if so, return it
  else
    result = yield # run the block
    cache_store[key] = result # store it in our cache
    return result
  end
end

# block of code to run in ^ yield ^
my_name1 = cache("adam's name", app_cache) do
  sleep 2
  "Adam Bray"
end

cache("hari's name", app_cache) do
  sleep 2
  "Hari Mohanraj"
end

# PROBLEM: if multiple keys match, it will return OLD stored value


cache(5, app_cache) do
  sleep 2
  Math.sqrt(5)
end

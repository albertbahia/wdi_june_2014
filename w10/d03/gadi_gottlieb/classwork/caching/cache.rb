# takes a key and a block of code to run
app_cache = {}
def cache(key, action, cache_store)
  cache_key = key.to_s + "_" + action.to_s
  if cache_store[key]
    return cache_store[cache_key]
  else
    result = yield # run the block
    cache_store[cache_key] = result # store it in our cache
    return result
  end
end

cache("my name", app_cache) do
  sleep 2
  "Gadi Gottlieb"
end

cache("Adam's name", app_cache) do
  sleep 2
  "Adam Bray"
end

cache(5, "sqrt", app_cache) do
  sleep 2
  Math.sqrt(5)
end

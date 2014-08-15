app_cache = {}
#takes a key and a block of code to run
def cache(key, cache_store)
  p cache_store
  if cache_store[key]
    return cache_store[key]
  else
    result = yield
    cache_store[key] = result
    return result
  end
end


cache("my name", app_cache) do
  sleep 2
  "Adam Bray"
end

cache("hari's name", app_cache) do
  sleep 2
  "Hariharan Mohanraj"
end


#to identify new functions with same key
def cache(key, action, cache_store)
  cache_key = key.to_s + "_" + action.to_s
  if cache_store[cache_key]
    return cache_store[cache_key]
  else
    result = yield
    cache_store[cache_key] = result
    return result
  end
end

app_cache = {}

# takes a key and a block of code to run
def cache(key, action, cache_store)

	cache_key = key.to_s + "_" + action.to_s # passing in the action so that cache know to run the correct one
  
	if cache_store[key]
		return cache_store[key]
	else
		result = yield # run the block
		cache_store[key] = result #store it in our cache
		return result
	end
end

cache("my name", app_cache) do
	sleep 2
	"Adam Bray"
end

cache("hari's name", app_cache) do
	sleep 2
	"Haiharan Mohanraj"
end

# A bug of caching
cache("my name", app_cache) do
	sleep 2
	"Not Adam Bray but whatever I want" # Cach will still return "Adam Bray"
end  


cache(5, "cubed", app_cache) do
	sleep 2
	return 5*5*5
end

cache(5, "sq root", app_cache) do
	sleep 2
	return 5*5
end
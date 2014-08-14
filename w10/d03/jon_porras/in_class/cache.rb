  app_cache =  {}

  def cache(key, action, cache_store)
    cache_key = key.to_s + '_' + action.to_s
    if cache_store[cache_key]
      return app_cache[cache_key]
  	else
      result = yield
      cache_store[cache_key] = result
      return result
    end
  end


  cache('my_name','namer', app_cache) do
  	sleep 2
  	'Jon'
  end

  cache('other_name','namer', app_cache) do
    sleep 2
    'Doug'
  end

  cache('dog_name','namer', app_cache) do
    sleep 2
    'Bowie'
  end

n=5
cache(n, 'cubed', app_cache) do
    sleep 2
    n*n*n
end

require 'redis'

Redis.current = Redis.new(url: ENV["REDIS_URL"], port: ENV["REDIS_PORT"], db: ENV["REDIS_DB"])
if ENV["REDISCLOUD_URL"]
  uri = URI.parse(ENV["REDISCLOUD_URL"])
  Redis.current = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)
end
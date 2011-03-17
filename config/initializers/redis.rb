require 'redis'
require 'redis/objects'
require 'redis/list' # Redis::List needs this
#Redis::Objects.redis = Redis.new # this doesn't seem to work in this version
$redis = Redis.new

if ENV["RAILS_ENV"] == 'test'
  $redis.select 1
else
  $redis.select 0
end

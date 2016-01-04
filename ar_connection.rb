require 'active_record'
require 'logger'

ActiveRecord::Base.establish_connection({
  adapter: 'sqlite3',
  database: 'squeel_test.sqlite3',
})
ActiveRecord::Base.logger = Logger.new(STDOUT)

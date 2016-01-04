require 'active_record'
require 'arel'

require_relative 'ar_connection'
require_relative 'ar_schema'

Dir[File.expand_path('../models/*.rb', __FILE__)].each do |model_filename|
  require model_filename
end

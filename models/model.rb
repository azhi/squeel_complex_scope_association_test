require 'active_record'

class Model < ActiveRecord::Base
  belongs_to :parent
end

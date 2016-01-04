require 'active_record'

class Parent < ActiveRecord::Base
  has_many :models

  has_many :complex_scoped_models, ->{ where(flag: true).where(field: ['test1', 'test2', nil]) }, class_name: 'Model'
end

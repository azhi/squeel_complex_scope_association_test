require 'active_record'

ActiveRecord::Schema.define do
  create_table :parents, force: true do |t|
  end

  create_table :models, force: true do |t|
    t.string :field
    t.boolean :flag
    t.belongs_to :parent
  end
end

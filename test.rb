require_relative 'ar_boot'

require 'squeel'
require 'minitest/autorun'

class BugTest < Minitest::Test
  def test_complex_scope_inside_association
    parent = Parent.create!
    model = Model.create!(parent: parent, flag: true, field: 'test1')
    assert_equal 'test1', Parent.all.joins(:complex_scoped_models).first.models.first.field
  end
end

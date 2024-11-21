# == Schema Information
#
# Table name: headers
#
#  id         :bigint           not null, primary key
#  name       :string
#  path       :string
#  position   :integer
#  component  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class HeaderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

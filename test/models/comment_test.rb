# == Schema Information
#
# Table name: comments
#
#  id         :bigint           not null, primary key
#  postUrl    :string           not null
#  name       :string           not null
#  email      :string
#  body       :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

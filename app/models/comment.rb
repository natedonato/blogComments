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

class Comment < ApplicationRecord
    validates :postUrl, :name, presence: true
    validates :body, length: {minimum: 3}






end

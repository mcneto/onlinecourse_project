# == Schema Information
#
# Table name: groups
#
#  id         :integer          not null, primary key
#  group_name :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Group < ApplicationRecord
    has_many :user_groups
    has_many :users, through: :user_groups
end

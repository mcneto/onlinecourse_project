# == Schema Information
#
# Table name: groups
#
#  id         :integer          not null, primary key
#  group_name :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_groups_on_id  (id)
#
class Group < ApplicationRecord
    has_many :user_groups
    has_many :users, through: :user_groups
end

# == Schema Information
#
# Table name: user_groups
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  group_id   :integer          not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_user_groups_on_group_id  (group_id)
#  index_user_groups_on_user_id   (user_id)
#
# Foreign Keys
#
#  group_id  (group_id => groups.id)
#  user_id   (user_id => users.id)
#
class UserGroup < ApplicationRecord
  belongs_to :user
  belongs_to :group
end

class Task < ApplicationRecord
  belongs_to :project
  belongs_to :user
  belongs_to :assigned_user,foreign_key: 'assigned_user_id', class_name: 'User', optional: true
end

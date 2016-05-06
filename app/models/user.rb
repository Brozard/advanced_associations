class User < ActiveRecord::Base
  has_and_belongs_to_many :groups, join_table: :users_groups
  has_many :students, class_name: "User", foreign_key: "teacher_id"
  belongs_to :teacher, class_name: "User"
end

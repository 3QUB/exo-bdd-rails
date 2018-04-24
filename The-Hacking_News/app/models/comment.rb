class Comment < ApplicationRecord
  # has_many :comment, :class_name => "Comment"
  # belongs_to :comment, :class_name => "Comment"
  belongs_to :user
  belongs_to :link
end

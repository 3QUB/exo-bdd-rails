class Pin < ApplicationRecord
  belongs_to :user, required: false
  has_many :comment
end

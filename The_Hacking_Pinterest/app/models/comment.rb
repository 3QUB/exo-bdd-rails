class Comment < ApplicationRecord
  belongs_to :pin, required: false
  belongs_to :user, required: false
end

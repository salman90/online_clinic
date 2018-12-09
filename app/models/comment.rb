class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :checkup
  validates :body, presence: true
end

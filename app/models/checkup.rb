class Checkup < ApplicationRecord
  belongs_to :user
  has_many :comments
  mount_uploader :image, AvatarUploader
  # validates :image, presence: true
end

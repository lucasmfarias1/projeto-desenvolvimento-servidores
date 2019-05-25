class Album < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :banda
end

class Weighin < ActiveRecord::Base

  belongs_to :user
  has_many :friends

  mount_uploader :weigh_image, ImageUploader 


end

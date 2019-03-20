class Publication < ApplicationRecord
  belongs_to :category
  belongs_to :user

  mount_uploader :image, ImageUploader

  def self.search( search )
    where(
     "title LIKE ?
      OR preview LIKE ?" ,
      "%#{search}%",
      "%#{search}%"
     )
  end
end	

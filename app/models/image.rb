class Image < ActiveRecord::Base
  belongs_to :gallery
  has_many :comments

  has_many :group_images
  has_many :groups, through: :group_images

  has_many :likes
  has_many :liked_images, through: :likes, source: :image
  
  has_many :taggings
  has_many :tags, through: :taggings


  validates :url, presence: true
  validates :gallery, presence: true
end

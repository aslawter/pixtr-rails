class Tag < ActiveRecord::Base
  has_many :taggings
  has_many :images, through: :taggings

  validates :name, uniqueness: true
end

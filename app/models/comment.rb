class Comment < ActiveRecord::Base
  belongs_to :image
  belongs_to :use  

  validates :user_id, presence: true
  validates :image_id, presence: true
  validates :body, presence: true
  def self.recent
    order(created_at: :desc).limit(10)
  end
end

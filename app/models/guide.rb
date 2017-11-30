class Guide < ActiveRecord::Base
  belongs_to :user
  has_many :images
  validates :title, presence: true
  validates :content, presence: true
  def self.search(search)
  	where("title ILIKE ?", "%#{search}%") 
  	where("user_name ILIKE ?", "%#{search}%")
  	where("content ILIKE ?", "%#{search}%")
  	where("user_name ILIKE ?", "%#{search}%")
  end
end

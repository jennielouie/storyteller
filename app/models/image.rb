class Image < ActiveRecord::Base
  attr_accessible :url, :image_id
  has_many :narratives
  has_many :writers, through: :narratives

  validates :url, presence: true, uniqueness: true


end

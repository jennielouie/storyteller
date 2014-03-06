class Image < ActiveRecord::Base
  attr_accessible :url

  has_many :narratives, through: :image_narratives
  has_many :writers, through: :image_narratives

  validates :url, presence: true, uniqueness: true


# create JSON api for image data
def makeImageJson
end


end

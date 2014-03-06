class Narrative < ActiveRecord::Base
  attr_accessible :title, :story, :writer_id, :image_id
  belongs_to :writer
  has_many :images, through: :image_narratives

  validates :story, presence: true
  validates :writer_id, presence: true
  validates :title, presence: true


end

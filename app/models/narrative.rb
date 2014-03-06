class Narrative < ActiveRecord::Base
  attr_accessible :title, :story, :writer_id, :image_id
  belongs_to :writer
  belongs_to :images

  validates :story, presence: true
  validates :writer_id, presence: true
  validates :title, presence: true
  validates :image_id, presence: true


end

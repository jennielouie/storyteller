class Writer < ActiveRecord::Base
  attr_accessible :name, :provider, :uid
  has_many :narratives, dependent: :destroy
  has_many :images, through: :narratives

  has_many :votes, through: :narratives

  validates :name, :provider, :uid, presence: true


  def self.from_omniauth(auth)
    find_by_provider_and_uid(auth["provider"], auth["uid"]) || create_with_omniauth(auth)
  end


  def self.create_with_omniauth(auth)
    create! do |writer|
      writer.provider = auth["provider"]
      writer.uid = auth["uid"]
      writer.name = auth["info"]["name"]
    end
  end
end

class Profile
  include Mongoid::Document

  field :name, type: String
  field :url, type: String
  field :weight, type: Integer

  validates :name, presence: true
  validates :url, presence: true
  validates :weight, presence: true, uniqueness: true
end

class Page
  include Mongoid::Document

  field :name, type: String
  field :code, type: String
  field :sidebar, type: String
  field :content, type: String

  validates :name, presence: true, uniqueness: true
  validates :content, presence: true
end

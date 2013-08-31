class ResumeEntry
  include Mongoid::Document

  field :name, type: String
  field :value, type: Array
  field :hweight, type: Integer, default: ->{1}
  field :vweight, type: Integer, default: ->{1}
  field :parent, type: Integer, default: ->{0}
	auto_increment :id

  validates :name, presence: true
  validates :hweight, presence: true
  validates :weight, presence: true
  validates :parent, presence: true
end

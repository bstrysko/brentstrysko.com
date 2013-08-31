class ResumeEntry
  include Mongoid::Document

  field :name, type: String
  field :value, type: Array
  field :horizontal_weight, type: Integer, default: ->{1}
  field :vertical_weight, type: Integer, default: ->{1}
  field :parent, type: Integer, default: ->{0}
	auto_increment :id

  validates :name, presence: true
  validates :horizontal_weight, presence: true
  validates :vertical_weight, presence: true
  validates :parent, presence: true
end

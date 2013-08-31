class Post
	include Mongoid::Document

	auto_increment :_id
	auto_increment :id
	field :title, type: String
	field :content, type: String
	field :published, type: Boolean, default: false
	field :posted, type: DateTime, default: ->{DateTime.now}

	belongs_to :project
	belongs_to :tutorial

	validates :title, presence: true
	validates :content, presence: true
	validates :published, presence: true
	validates :posted, presence: true

	# So the posted textfield can read posted from a previous entry
  def setup_posted
    posted.to_s(:db)
  end

  def setup_posted=(posted_str)
    self.posted = DateTime.parse(posted_str)
  end
end
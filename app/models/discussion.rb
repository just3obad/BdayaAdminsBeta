class Discussion
  include Mongoid::Document
  field :user_name
  field :message

  validates_presence_of :user_name, :message=> "Must enter a user name"
  validates_presence_of :message, :message=> "Must enter a message"

  belongs_to :meeting, class_name: 'Meeting'

  def self.post(user, message)
  	discussion = Discussion.new
  	discussion.user_name = user
  	discussion.message = message
  	discussion.save!
  end
end

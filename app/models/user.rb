class User < ApplicationRecord
  has_many :events, :foreign_key => "user_id", :class_name => "Event"
	validates :name, presence: true
	# validates :email, presence: true
end

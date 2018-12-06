class User < ApplicationRecord
  has_many :events, :foreign_key => "user_id", :class_name => "Event"
  has_many :attendances
  has_many :events_as_attendee, through: :attendances, source: "event"

	validates :name, presence: true
	# validates :email, presence: true
end

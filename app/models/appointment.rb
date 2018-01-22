class Appointment < ActiveRecord::Base

	belongs_to :doctor ,class_name: User
	belongs_to :patient ,class_name: User
	has_many :notes
	has_many :images ,as: :imageable
end

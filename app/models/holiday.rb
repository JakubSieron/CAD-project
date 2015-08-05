class Holiday < ActiveRecord::Base
	belongs_to :user
	has_many :answers
	validates_presence_of :name
	validates_presence_of :address
	validates_presence_of :phone
	validates_presence_of :email
	validates_presence_of :position
	validates_presence_of :from
	validates_presence_of :to
	validates_presence_of :submited
end

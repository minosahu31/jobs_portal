class Company < ActiveRecord::Base
	validates :name, presence: true 
	validates :name, length: {minimum: 2}, format: { with: /\A[a-zA-Z]+\z/, message: "only allow letters...." }, uniqueness: { case_sensitivity: false }, unless: "name.blank?" 
	validates :location, presence: true
	validates :website, presence: true

	has_many :jobs, dependent: :destroy
end

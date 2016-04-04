class Job < ActiveRecord::Base

	validates :title, presence:true
	validates :description, presence:true
	validates :exprience, presence:true
	validates :exprience, length: { maximum:2 }, numericality: true , unless: "exprience.blank?"
	validates :skill_set, presence:true
	validates :company_id, presence:true 
	validates :company_id, numericality: true, unless: "company_id.blank?"
	
	belongs_to :company
	has_many :candidate_jobs
	has_many :candidates, :through => :candidate_jobs
	#has_and_belongs_to_many :candidates
end

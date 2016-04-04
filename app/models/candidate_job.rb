class CandidateJob < ActiveRecord::Base
	belongs_to :candidate
	belongs_to :job
end

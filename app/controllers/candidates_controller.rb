class CandidatesController < ApplicationController
  	def new
		@job = Job.find(params[:job_id])
	end

	def create
		candidate = current_candidate
		@company = Job.find(params[:job_id]).company
		candidate_job = CandidateJob.new({:job_id => params[:job_id],:candidate_id => candidate.id})
		if candidate_job.save
			redirect_to company_path(@company)	
		end	

	end
end

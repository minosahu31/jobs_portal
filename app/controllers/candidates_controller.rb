class CandidatesController < ApplicationController
  	def new	
		#raise params.inspect
		@job = Job.find(params[:job_id])
		#@company = Company.find(params[:format])
		#raise @company.inspect 
	end

	def create
		#raise params.inspect
		candidate = current_candidate
		@company = Job.find(params[:job_id]).company
		#@new_record = @candidate.candidate_jobs.new(job: @job)
		candidate_job = CandidateJob.new({:job_id => params[:job_id],:candidate_id => candidate.id})
		#raise @new_record.inspect
		if candidate_job.save
			redirect_to company_path(@company)
		else
			render "new"	
		end	

	end
end

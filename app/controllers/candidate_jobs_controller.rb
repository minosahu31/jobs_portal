class CandidateJobsController < ApplicationController

	def new	
		#raise params.inspect
		@job = Job.find(params[:job_id])
		@company = Company.find(params[:format])
		#raise @company.inspect 
	end
	
	def create
		#raise params.inspect
		@candidate = current_candidate
		@job = Job.find(params[:job_id])
		@company = Company.find(params[:format])
		@new_record = @candidate.candidate_jobs.new(job: @job)
		
		if @new_record.save
			redirect_to company_path(@company,@job)
		else
			render "new"	
		end	

	end

end

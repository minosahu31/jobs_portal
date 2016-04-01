class JobsController < ApplicationController

	def show

	end

	def new
		#raise params.inspect
		@company = Company.find(params[:company_id])
		#raise @company.inspect
		@job = Job.new
	end

	def create
		@company = Company.find(params[:company_id])
		#@job = Job.params[:id]
		@job = @company.jobs.new(jobs_params)
		if @job.save
			redirect_to company_path(@company)
		else
			render "new"
		end
	end	

	def edit
		#raise params.inspect
		@company = Company.find(params[:company_id])
		#raise @company.inspect
		@job = Job.find(params[:id])
	end

	def update 
		@company = Company.find(params[:company_id])
		@job = Job.find(params[:id])
		if @job.update(jobs_params)
			redirect_to company_path(@company)
		else
			render "edit"
		end	
	end

	def destroy
		@job = job.find(params[:id])
		@company = Company.find(params[:company_id])
		if @job.destroy
			redirect_to company_path(@company)
		end	
	end

	private

	def jobs_params
		params.require(:job).permit(:title,:description,:exprience,:skill_set)
	end

end

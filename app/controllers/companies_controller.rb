class CompaniesController < ApplicationController
	before_action :authenticate_candidate!, except: [:index]
    before_action :find_company , only: [:show, :edit, :update, :destroy]

	  def index
	  	@companies = Company.all
	  end

	  def show
	  	@company = Company.find(params[:id])
	  	@jobs = @company.jobs
		@job = Job.new
		@candidate = current_candidate
		@candidates = Candidate.all
	  end

	  def new
	    @company = Company.new
	  end

	  def create
	  	#raise params.inspect
	    @company = Company.new(company_params)
	    if @company.save
	      redirect_to companies_path
	    else
	      render "new"
	    end
	  end

	  def edit
	  end

	  def update
	  	if @company.update(company_params)
	  		redirect_to company_path(@company)
	  	else
	  		render "edit"
	  	end
	  end

	  def destroy
	  	if @company.destroy
	  		redirect_to company_path(@company)
	  	end
	  end

	  private

	  def company_params
	  	#raise params.inspect
	    params.require(:company).permit(:name, :location, :website)
	  end

	  def find_company
	    @company = Company.find(params[:id])
	  end

end

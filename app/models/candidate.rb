class Candidate < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :candidate_jobs       
  has_many :jobs, :through => :candidate_jobs
  #has_and_belongs_to_many :jobs
end

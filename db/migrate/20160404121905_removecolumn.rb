class Removecolumn < ActiveRecord::Migration
  def change
  	remove_column :candidate_jobs, :applied_date
  end
end

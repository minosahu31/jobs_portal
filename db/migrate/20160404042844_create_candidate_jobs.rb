class CreateCandidateJobs < ActiveRecord::Migration
  def change
    create_table :candidate_jobs do |t|
      t.integer :candidate_id
      t.integer :job_id
      t.date :applied_date

      t.timestamps null: false
    end
  end
end

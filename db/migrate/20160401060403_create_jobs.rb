class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :description
      t.integer :exprience
      t.string :skill_set
      t.integer :company_id

      t.timestamps null: false
    end
  end
end

class AddColumnToCandidate < ActiveRecord::Migration
  def change
  	add_column :candidates, :role, :string
  end
end

class CreateAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :assignments do |t|
      t.integer :employee_id
      t.integer :project_id
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end

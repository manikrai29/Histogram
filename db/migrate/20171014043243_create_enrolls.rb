class CreateEnrolls < ActiveRecord::Migration
  def change
    create_table :enrolls do |t|
      t.integer :studentId
      t.string :course_Id
      t.string :Percentage
      t.string :lettergrade

      t.timestamps null: false
    end
  end
end

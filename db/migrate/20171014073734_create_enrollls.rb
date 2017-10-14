class CreateEnrollls < ActiveRecord::Migration
  def change
    create_table :enrollls do |t|
      t.integer :student_id
      t.string :course_id
      t.string :percentage
      t.string :lettergrade

      t.timestamps null: false
    end
  end
end

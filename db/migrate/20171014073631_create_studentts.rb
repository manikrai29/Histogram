class CreateStudentts < ActiveRecord::Migration
  def change
    create_table :studentts do |t|
      t.integer :student_id
      t.string :name
      t.string :email

      t.timestamps null: false
    end
  end
end

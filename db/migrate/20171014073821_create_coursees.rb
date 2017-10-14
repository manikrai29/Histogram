class CreateCoursees < ActiveRecord::Migration
  def change
    create_table :coursees do |t|
      t.string :course_id
      t.string :description

      t.timestamps null: false
    end
  end
end

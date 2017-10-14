class RenameStudentIdToStudentId < ActiveRecord::Migration
  def change


    rename_column :students, :studentId, :student_id
    rename_column :enrolls, :studentId, :student_id
    rename_column :courses, :course_Id, :course_id
    rename_column :enrolls, :course_Id, :course_id
  end
end

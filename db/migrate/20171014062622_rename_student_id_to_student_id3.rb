class RenameStudentIdToStudentId3 < ActiveRecord::Migration
  def change
    rename_column :enrolls, :course_Id, :course_id
  end
end

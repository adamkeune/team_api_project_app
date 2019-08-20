class AddStudentIdToEducations < ActiveRecord::Migration[6.0]
  def change
    add_column :educations, :student_id, :integer
  end
end

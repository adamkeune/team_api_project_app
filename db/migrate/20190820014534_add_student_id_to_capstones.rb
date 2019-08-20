class AddStudentIdToCapstones < ActiveRecord::Migration[6.0]
  def change
    add_column :capstones, :student_id, :integer
  end
end

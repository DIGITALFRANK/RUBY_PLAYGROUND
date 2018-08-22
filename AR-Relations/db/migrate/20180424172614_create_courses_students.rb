
class CreateCoursesStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :courses_students do |t|
      t.integer :course_id
      t.integer :student_id
    end
  end
end

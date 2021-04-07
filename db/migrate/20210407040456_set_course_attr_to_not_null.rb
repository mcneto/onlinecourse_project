class SetCourseAttrToNotNull < ActiveRecord::Migration[6.1]
  def change
    change_column_null :courses, :course_name, false
  end
end

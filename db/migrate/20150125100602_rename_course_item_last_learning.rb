class RenameCourseItemLastLearning < ActiveRecord::Migration
  def change
    rename_column :course_items, :last_learning, :last_learned
  end
end

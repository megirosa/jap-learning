class AddCompletedToCourseItems < ActiveRecord::Migration
  def change
    add_column :course_items, :completed, :boolean, default: false
  end
end

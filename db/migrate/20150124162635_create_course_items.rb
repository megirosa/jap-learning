class CreateCourseItems < ActiveRecord::Migration
  def change
    create_table :course_items do |t|
      t.integer :times_repeated, default: 0
      t.datetime :last_learning
      t.references :word, index: true
      t.references :course, index: true

      t.timestamps
    end
  end
end

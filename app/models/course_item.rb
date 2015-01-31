# == Schema Information
#
# Table name: course_items
#
#  id             :integer          not null, primary key
#  times_repeated :integer          default("0")
#  last_learned   :datetime
#  word_id        :integer
#  course_id      :integer
#  created_at     :datetime
#  updated_at     :datetime
#  completed      :boolean          default("false")
#

class CourseItem < ActiveRecord::Base
  belongs_to :word
  belongs_to :course

  delegate :translation, :romaji, :kana, :kanji, to: :word

  after_create :set_last_learned

  def self.items_for course_id
    where(course_id: course_id).order('last_learned asc').limit 10
  end

  private

  def set_last_learned
    last_learned = created_at
  end
end

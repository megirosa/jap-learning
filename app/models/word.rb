# == Schema Information
#
# Table name: words
#
#  id          :integer          not null, primary key
#  translation :string
#  kana        :string
#  romaji      :string
#  kanji       :string
#  created_at  :datetime
#  updated_at  :datetime
#

class Word < ActiveRecord::Base
  has_many :course_items
  has_many :learned_words

  def to_label
    "#{translation} (#{romaji})"
  end
end

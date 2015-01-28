# == Schema Information
#
# Table name: words
#
#  id          :integer          not null, primary key
#  translation :string(255)
#  kana        :string(255)
#  romaji      :string(255)
#  kanji       :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Word < ActiveRecord::Base
  has_many :course_items

  def to_label
    "#{translation} (#{romaji})"
  end
end

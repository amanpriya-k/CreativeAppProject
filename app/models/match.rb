# == Schema Information
#
# Table name: matches
#
#  id                :integer          not null, primary key
#  viewed_by_user_id :integer          not null
#  viewed_user_id    :integer          not null
#  date_viewed       :date
#  interested        :boolean
#

class Match < ApplicationRecord

  belongs_to :user_who_viewed_other,
    foreign_key: :viewed_by_user_id,
    class_name: :User

  belongs_to :user_who_was_viewed,
    foreign_key: :viewed_user_id,
    class_name: :User

end

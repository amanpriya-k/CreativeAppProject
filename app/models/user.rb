# == Schema Information
#
# Table name: users
#
#  id                 :integer          not null, primary key
#  first_name         :string           not null
#  last_name          :string
#  email              :string
#  date_of_birth      :date
#  city               :string
#  state              :string
#  primary_skill_id   :integer
#  profile_image_link :string
#

class User < ApplicationRecord

  # belongs_to :primary_skill,
  #   foreign_key: :primary_skill_id,
  #   class_name: :Skill

  has_many :persons_skills,
    foreign_key: :user_id,
    class_name: :PersonsSkills

  has_many :skills,
    through: :persons_skills,
    source: :skill

  has_many :matches_where_i_was_viewed,
    foreign_key: :viewed_user_id,
    class_name: :User

  has_many :users_who_saw_me,
    through: :matches_where_i_was_viewed,
    source: :user_who_viewed_other

##################

  has_many :matches_where_i_saw_other,
    foreign_key: :viewed_by_user_id,
    class_name: :User

  has_many :users_i_saw,
    through: :matches_where_i_saw_other,
    source: :user_who_was_viewed

end

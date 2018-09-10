# == Schema Information
#
# Table name: skills
#
#  id         :integer          not null, primary key
#  skill_name :string           not null
#

class Skill < ApplicationRecord

  # has_many :primary_users,
  #   foreign_key: :primary_skill_id,
  #   class_name: :User

  has_many :persons_skills,
    foreign_key: :skill_id,
    class_name: :PersonsSkills

  has_many :users,
    through: :persons_skills,
    source: :user

end

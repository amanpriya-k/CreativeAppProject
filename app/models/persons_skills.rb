# == Schema Information
#
# Table name: persons_skills
#
#  id       :integer          not null, primary key
#  skill_id :integer          not null
#  user_id  :integer          not null
#

class PersonsSkills < ApplicationRecord

  belongs_to :user,
    foreign_key: :user_id,
    class_name: :User

  belongs_to :skill,
    foreign_key: :skill_id,
    class_name: :Skill

end

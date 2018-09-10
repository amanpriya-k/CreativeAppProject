class AddPersonsSkillsAgain < ActiveRecord::Migration[5.2]
  def change
    PersonsSkills.create(user_id: User.find_by(first_name: 'Riya').id, skill_id: Skill.find_by(skill_name: 'Modeling'))
    PersonsSkills.create(user_id: User.find_by(first_name: 'Owen').id, skill_id: Skill.find_by(skill_name: 'Photography'))
  end
end

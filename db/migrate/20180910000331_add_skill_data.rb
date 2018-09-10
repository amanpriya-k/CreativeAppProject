class AddSkillData < ActiveRecord::Migration[5.2]
  def change
    Skill.create(skill_name: 'Photography')
    Skill.create(skill_name: 'Modeling')
    Skill.create(skill_name: 'Stylist')
    Skill.create(skill_name: 'Makeup Artist')
  end
end

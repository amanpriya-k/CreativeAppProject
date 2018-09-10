class CreatePersonsSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :persons_skills do |t|
        t.integer :skill_id, null: false
        t.integer :user_id, null: false
    end
  end
end

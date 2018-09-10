class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name
      t.string :email
      t.date :date_of_birth
      t.string :city
      t.string :state
      t.integer :primary_skill_id
      t.string :profile_image_link
    end
    # add_index :users, :email, unique: true
  end
end

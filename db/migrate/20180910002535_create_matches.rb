class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.integer :viewed_by_user_id, null: false
      t.integer :viewed_user_id, null: false
      t.date :date_viewed
      t.boolean :interested
    end
  end
end

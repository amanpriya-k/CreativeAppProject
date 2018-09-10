class AddMatchData < ActiveRecord::Migration[5.2]
  def change
    Match.create(viewed_by_user_id: 2, viewed_user_id: 1, interested: true)
  end
end

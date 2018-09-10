class AddUserData < ActiveRecord::Migration[5.2]
  def change
    User.create(first_name: 'Riya', last_name: 'Kulkarni', email: 'ak@gmail.com')
    User.create(first_name: 'Owen', last_name: 'H', email: 'oh@gmail.com')
  end
end

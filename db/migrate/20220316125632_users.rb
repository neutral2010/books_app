class Users < ActiveRecord::Migration[6.1]
  def change
    drop_table :users
    create_table users
  end
end

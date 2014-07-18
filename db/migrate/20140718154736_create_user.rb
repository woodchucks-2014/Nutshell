class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :username
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
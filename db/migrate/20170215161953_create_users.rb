class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.date :date_of_birth
      t.string :password_hash
      t.string :password_salt
      t.string :description

      t.timestamps null: false
    end
  end
end

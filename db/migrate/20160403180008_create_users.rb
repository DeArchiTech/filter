class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :id
      t.string :username
      t.string :email
      t.string :pwd
      t.string :attribute

      t.timestamps null: false
    end
  end
end

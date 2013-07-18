class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login_name
      t.string :name
      t.string :password_digest

      t.timestamps
    end
  end
end

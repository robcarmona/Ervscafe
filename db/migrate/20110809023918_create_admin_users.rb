class CreateAdminUsers < ActiveRecord::Migration
  def self.up
    create_table :admin_users do |t|
  t.string "first_name", :limit=> 25
  t.string "last_name", :limit=> 50
  t.string "email",:default =>"",:null=>false
  t.string "hashed_password", :limit => 40
  t.string "salt", :limit =>40
  t.string "username", :limit =>25
      t.timestamps
    end
  end

  def self.down
    drop_table :admin_users
  end
end

class AlterAdmin < ActiveRecord::Migration
  def self.up
change_column("admin_users","email",:string,:limit=>100)
add_column("admin_users","salt",:string,:limit=>40)
  end

  def self.down
change_column("admin_users","email",:string,:default=>"",:null=>false)
rename_table("admin_users","users")
  end
end

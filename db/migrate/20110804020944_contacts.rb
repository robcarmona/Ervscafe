class Contacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string "name"
      t.string "email"
      t.string "phone"
      t.text   "content"
      t.timestamps
    end
  end

  def self.down
    drop table :contacts
  end
end

class CreateSpecials < ActiveRecord::Migration
  def self.up
    create_table :specials do |t|
  t.string "day"
  t.string "special"
  t.string "price"
      t.timestamps
    end
  end

  def self.down
    drop_table :specials
  end
end

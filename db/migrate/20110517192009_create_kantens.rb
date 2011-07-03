class CreateKantens < ActiveRecord::Migration
  def self.up
    create_table :kantens do |t|
      t.string :start
      t.string :ziel
      t.integer :laenge

      t.timestamps
    end
  end

  def self.down
    drop_table :kantens
  end
end

class CreateStreckes < ActiveRecord::Migration
  def self.up
    create_table :streckes do |t|
      t.string :knoten1
      t.string :knoten2
      t.integer :laenge

      t.timestamps
    end
  end

  def self.down
    drop_table :streckes
  end
end

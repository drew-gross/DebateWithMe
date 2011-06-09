class CreateDebates < ActiveRecord::Migration
  def self.up
    create_table :debates do |t|
      t.string :proposition
      t.references :debate
      t.boolean :is_supporting
      t.text :content

      t.timestamps
    end
  end

  def self.down
    drop_table :debates
  end
end

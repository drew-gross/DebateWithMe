class CreateDebates < ActiveRecord::Migration
  def self.up
    create_table :debates do |t|
      t.string :name
      t.string :title
      t.text :content

      t.timestamps
    end
  end

  def self.down
    drop_table :debates
  end
end

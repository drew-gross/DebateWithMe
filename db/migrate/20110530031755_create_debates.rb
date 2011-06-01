class CreateDebates < ActiveRecord::Migration
  def self.up
    create_table :debates do |t|
      t.string :title

      t.timestamps
    end
  end

  def self.down
    drop_table :debates
  end
end

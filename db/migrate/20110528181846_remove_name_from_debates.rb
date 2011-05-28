class RemoveNameFromDebates < ActiveRecord::Migration
  def self.up
    remove_column :debates, :name
  end

  def self.down
    add_column :debates, :name, :string
  end
end

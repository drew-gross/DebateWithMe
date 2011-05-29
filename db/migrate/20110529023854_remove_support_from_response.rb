class RemoveSupportFromResponse < ActiveRecord::Migration
  def self.up
    remove_column :responses, :support
  end

  def self.down
    add_column :responses, :support, :boolean
  end
end

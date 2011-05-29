class RemoveContentFromDebates < ActiveRecord::Migration
  def self.up
    remove_column :debates, :content
  end

  def self.down
    add_column :debates, :content, :text
  end
end

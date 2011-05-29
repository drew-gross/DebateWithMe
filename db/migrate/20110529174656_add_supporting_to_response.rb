class AddSupportingToResponse < ActiveRecord::Migration
  def self.up
    add_column :responses, :supporting, :boolean
  end

  def self.down
    remove_column :responses, :supporting
  end
end

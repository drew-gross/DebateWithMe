class RenameTitleToProposition < ActiveRecord::Migration
  def self.up
      rename_column :debates, :title, :proposition
  end

  def self.down
      rename_column :debates, :proposition, :title
  end
end

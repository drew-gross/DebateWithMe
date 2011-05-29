class CreateResponses < ActiveRecord::Migration
  def self.up
    create_table :responses do |t|
      t.text :body
      t.boolean :support
      t.references :debate

      t.timestamps
    end
  end

  def self.down
    drop_table :responses
  end
end

class AddEmailUniquenessIndex < ActiveRecord::Migration
  def self.up
    add_index :staff, :name, :unique => true
  end

  def self.down
    remove_index :staff, :name
  end
end

class AddSaltToStaff < ActiveRecord::Migration
  def self.up
    add_column :staffs, :salt, :string
  end

  def self.down
    remove_column :staffs, :salt
  end
end

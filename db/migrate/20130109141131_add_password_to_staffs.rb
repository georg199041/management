class AddPasswordToStaffs < ActiveRecord::Migration
  def self.up
    add_column :staffs, :encrypted_password, :string
  end

  def self.down
    remove_column :staffs, :encrypted_password
  end
end

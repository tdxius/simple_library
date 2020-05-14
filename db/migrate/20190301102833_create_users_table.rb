# frozen_string_literal: true

class CreateUsersTable < ActiveRecord::Migration[5.2]
  def self.up
    create_table :users do |t|
      t.string :full_name
      t.string :email

      t.timestamps
    end
  end

  def self.down
    raise ActiveRecord::IrreversibleMigration
  end
end

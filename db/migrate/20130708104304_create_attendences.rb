class CreateAttendences < ActiveRecord::Migration
  def self.up
    create_table :attendences do |t|
      t.string :group
      t.string :year

      t.timestamps
    end
  end

  def self.down
    drop_table :attendences
  end
end

class CreateAttendenceChildren < ActiveRecord::Migration
  def self.up
    create_table :attendence_children do |t|
      t.integer :attendence_id
      t.string :st_no
      t.string :presence

      t.timestamps
    end
  end

  def self.down
    drop_table :attendence_children
  end
end

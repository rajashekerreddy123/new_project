class CreateNotesManagers < ActiveRecord::Migration
  def self.up
    create_table :notes_managers do |t|
      t.integer :note_id
      t.integer :accordion_id
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :notes_managers
  end
end

class CreateAccordions < ActiveRecord::Migration
  def self.up
    create_table :accordions do |t|
      t.string :heading
      t.string :image
      t.text :paragraph

      t.timestamps
    end
  end

  def self.down
    drop_table :accordions
  end
end

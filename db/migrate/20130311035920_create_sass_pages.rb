class CreateSassPages < ActiveRecord::Migration
  def self.up
    create_table :sass_pages do |t|
      t.string :sass_text
      t.string :sass_name

      t.timestamps
    end
  end

  def self.down
    drop_table :sass_pages
  end
end

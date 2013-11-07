class CreateSendBirthdaymails < ActiveRecord::Migration
  def self.up
    create_table :send_birthdaymails do |t|
      t.string :all
      t.date :from_date
      t.date :to_date
      t.integer :before_days
      t.string :template

      t.timestamps
    end
  end

  def self.down
    drop_table :send_birthdaymails
  end
end

class CreateDates < ActiveRecord::Migration
  def change
    create_table :dates do |t|
      t.integer :event_id
      t.integer :user_id

      t.timestamps

    end
  end
end

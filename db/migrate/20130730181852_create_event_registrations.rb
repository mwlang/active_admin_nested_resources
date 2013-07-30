class CreateEventRegistrations < ActiveRecord::Migration
  def change
    create_table :event_registrations do |t|
      t.references :event, index: true
      t.string :first_name
      t.string :last_name
      t.string :email

      t.timestamps
    end
  end
end

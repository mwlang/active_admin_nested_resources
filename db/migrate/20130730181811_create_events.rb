class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.datetime :starts_on
      t.datetime :ends_on

      t.timestamps
    end
  end
end

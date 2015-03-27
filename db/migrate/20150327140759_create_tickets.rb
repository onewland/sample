class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.text :title
      t.text :description
      t.integer :assignee_id

      t.timestamps null: false
    end
  end
end

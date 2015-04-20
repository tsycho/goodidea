class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.integer :ideator_id, null: false
      t.integer :observer_id
      t.string :description

      t.timestamps
    end
  end
end

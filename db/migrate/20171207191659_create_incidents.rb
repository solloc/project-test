class CreateIncidents < ActiveRecord::Migration[5.2]
  def change
    create_table :incidents do |t|
      t.string :title
      t.string :source
      t.integer :priority

      t.timestamps
    end
  end
end

class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name

      t.timestamps
    end
    add_reference :items, :merchant, foreign_key: true
  end
end

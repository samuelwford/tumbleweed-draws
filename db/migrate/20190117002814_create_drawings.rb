class CreateDrawings < ActiveRecord::Migration[5.2]
  def change
    create_table :drawings do |t|
      t.string :title
      t.text :notes

      t.timestamps
    end
  end
end

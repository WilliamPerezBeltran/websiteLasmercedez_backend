class CreateHeaders < ActiveRecord::Migration[7.1]
  def change
    create_table :headers do |t|
      t.string :name
      t.string :path
      t.integer :position
      t.string :component

      t.timestamps
    end
  end
end

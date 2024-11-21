class CreateImageFakes < ActiveRecord::Migration[7.1]
  def change
    create_table :image_fakes do |t|
      t.string :path
      t.string :name
      t.string :typeImage
      t.string :url

      t.timestamps
    end
  end
end

class CreateResolutions < ActiveRecord::Migration[6.0]
  def change
    create_table :resolutions do |t|
      t.string :style
      t.string :description
      t.text :image
      t.string :location

      t.timestamps
    end
  end
end

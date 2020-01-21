class CreateYogaclasses < ActiveRecord::Migration[5.2]
  def change
    create_table :yogaclasses do |t|
      t.string :name
      t.text :description
      t.string :time
      t.string :teacher
      t.timestamps
    end
  end
end

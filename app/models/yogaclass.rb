class Yogaclass < ApplicationRecord
  def change
    create_table :yogaclass do |t|
      t.string :name
      t.text :description
      t.string :time
      t.string :teacher
      t.timestamps
    end
  end
end

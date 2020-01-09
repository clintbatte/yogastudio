class CreateYogaclasses < ActiveRecord::Migration[5.2]
  def change
    create_table :yogaclasses do |t|

      t.timestamps
    end
  end
end

class Yogaclass < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :name, presence: true

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

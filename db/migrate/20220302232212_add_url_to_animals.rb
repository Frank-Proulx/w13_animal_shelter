class AddUrlToAnimals < ActiveRecord::Migration[5.2]
  def change
    add_column(:animals, :url, :string)
  end
end

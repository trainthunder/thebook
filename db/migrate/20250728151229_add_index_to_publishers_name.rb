class AddIndexToPublishersName < ActiveRecord::Migration[8.0]
  def change
    add_index :publishers, :name, unique: true
  end
end

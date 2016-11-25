class AddYotiIdToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :yoti_id, :integer, default: nil
  end
end

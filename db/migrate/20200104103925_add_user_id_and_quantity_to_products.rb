class AddUserIdAndQuantityToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :user_id, :integer
    add_column :products, :quantity, :integer
  end
end

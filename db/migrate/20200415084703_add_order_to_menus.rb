class AddOrderToMenus < ActiveRecord::Migration[5.2]
  def change
    add_column :menus, :order, :integer
  end
end

class AddCategoryToMenus < ActiveRecord::Migration[5.2]
  def change
    add_column :menus, :category, :text
  end
end

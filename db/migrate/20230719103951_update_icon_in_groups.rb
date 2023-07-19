class UpdateIconInGroups < ActiveRecord::Migration[7.0]
  def change
    change_column :groups, :icon, :string, default: 'default_icon.jpg'

  end
end

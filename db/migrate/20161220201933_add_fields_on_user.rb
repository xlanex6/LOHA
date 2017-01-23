class AddFieldsOnUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :telephone, :string
    add_column :users, :address, :string
    add_column :users, :compagny_name, :string
    add_column :users, :hourly_rate, :integer
  end
end

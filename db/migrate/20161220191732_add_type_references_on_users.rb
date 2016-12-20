class AddTypeReferencesOnUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :types, foreign_key: true
  end
end

class AddTagsReferencesToUser < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :tags, foreign_key: true
  end
end

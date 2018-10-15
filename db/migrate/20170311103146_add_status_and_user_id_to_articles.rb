class AddStatusAndUserIdToArticles < ActiveRecord::Migration[5.0]
  def change
  	add_column :articles, :status, :string, :default => "Unpublished"
  	add_column :articles, :user_id, :integer, null: false
  end
end

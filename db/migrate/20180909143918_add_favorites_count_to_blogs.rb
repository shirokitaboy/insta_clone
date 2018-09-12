class AddFavoritesCountToBlogs < ActiveRecord::Migration[5.1]
  def change
    add_column :blogs, :favorites_counter, :integer
  end
end

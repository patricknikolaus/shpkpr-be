class AddTitleToLibraryAndWishlist < ActiveRecord::Migration[7.0]
  def change
    add_column :libraries, :title, :string
    add_column :wishlists, :title, :string
  end
end

class AddColumnsToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :image, :string
  end
end

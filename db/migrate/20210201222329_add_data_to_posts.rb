class AddDataToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :views, :integer
    add_column :posts, :clicks, :integer
    add_column :posts, :last_reviewed_at, :datetime
  end
end

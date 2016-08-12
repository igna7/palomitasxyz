class AddOnlineToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :online, :text
  end
end

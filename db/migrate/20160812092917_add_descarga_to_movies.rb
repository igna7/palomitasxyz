class AddDescargaToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :descarga, :text
  end
end

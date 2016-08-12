class RemoveDescargaFromMovie < ActiveRecord::Migration
  def change
    remove_column :movies, :descarga, :text
  end
end

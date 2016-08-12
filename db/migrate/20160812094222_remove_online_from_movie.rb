class RemoveOnlineFromMovie < ActiveRecord::Migration
  def change
    remove_column :movies, :online, :text
  end
end

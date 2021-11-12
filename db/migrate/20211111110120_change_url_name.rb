class ChangeUrlName < ActiveRecord::Migration[6.0]
  def change
    rename_column :movies, :poster_URL, :poster_url
  end
end

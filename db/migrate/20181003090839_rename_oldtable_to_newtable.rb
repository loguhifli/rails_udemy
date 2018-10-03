class RenameOldtableToNewtable < ActiveRecord::Migration[5.2]
  def change
    rename_table :article, :articles
  end
end

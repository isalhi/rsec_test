class RemoveCatnameFromSearches < ActiveRecord::Migration
  def change
    remove_column :searches, :catname, :string
  end
end

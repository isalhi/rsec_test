class RemoveLocnameFromSearches < ActiveRecord::Migration
  def change
    remove_column :searches, :locname, :string
  end
end

class AddSearcherToSearches < ActiveRecord::Migration
  def change
    add_column :searches, :searcher, :string
  end
end

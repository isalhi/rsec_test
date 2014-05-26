class RemoveCreatorFromSearches < ActiveRecord::Migration
  def change
    remove_column :searches, :creator, :string
  end
end

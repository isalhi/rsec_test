class Activity < ActiveRecord::Base
    has_many :user_acts
	has_many :users, :through => :user_acts
    belongs_to :cathegory
    belongs_to :location

    validates :id_location, :presence => true
    validates :id_cathegory, :presence => true
    validates :name, :presence => true
end

class Trip < ActiveRecord::Base
    has_many :stops
    has_many :destinations, through: :stops
end
class Stop < ActiveRecord::Base
    belongs_to :destination
    belongs_to :trip
end
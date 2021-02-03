class ChildStorytime < ApplicationRecord
    belongs_to :child 
    belongs_to :storytime 
end

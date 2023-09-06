class Toy < ApplicationRecord
    validates :name, uniqueness: {scope: :toyable} 
    belongs_to :toyable, ploymorphic: true
end

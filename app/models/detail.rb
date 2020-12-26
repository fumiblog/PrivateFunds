class Detail < ApplicationRecord
    belongs_to :genre
    
    default_scope { order(date: :desc) }
end

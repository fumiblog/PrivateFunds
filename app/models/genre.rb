class Genre < ApplicationRecord
    has_many :details, dependent: :destroy
end

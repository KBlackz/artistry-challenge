class Instrument < ApplicationRecord
    has_many :logs
    has_many :artists, through: :logs
    
end

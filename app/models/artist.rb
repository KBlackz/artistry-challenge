class Artist < ApplicationRecord
    has_many :logs
    has_many :instruments, through: :logs
end

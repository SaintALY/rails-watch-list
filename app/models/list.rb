class List < ApplicationRecord
    has_many :bookmarks, dependent: :destroy
    has_many :movies, through: :bookmarks # über bookmark komm ich an filme ran
    

    validates :name, uniqueness: true
    validates :name, presence: true
end

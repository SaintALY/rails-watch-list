class List < ApplicationRecord
    has_many :movies
    has_many :bookmarks, dependent: :destroy

    validates :title, uniqueness: true
    validates :title, presence: true
end

class Movie < ApplicationRecord
    belongs_to:
    has_many: bookmarks
    validates :title, uniqueness: true
    validates :overview, uniqueness: true
    validates :title, presence: true
end

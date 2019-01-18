class Drawing < ApplicationRecord
    has_one_attached :picture
    acts_as_taggable_on :tags
end

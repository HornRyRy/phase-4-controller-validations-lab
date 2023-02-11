class Post < ApplicationRecord
    validates :title, presence: true
    validates :category, inclusion: { in: ["Fiction", "Non-Fiction"] }
    validates :content, length: { minimum: 100 }

    # def fiction_or_non_fiction
    #     if category.downcase != ("fiction" || "non-fiction")
    #         errors.add(:category, "Sorry, must be fiction or non-fiction")
    #     end
    # end
end

end

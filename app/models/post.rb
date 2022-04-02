class Post < ApplicationRecord
    # column name, {detail of the validation}
    validates :content, {presence: true, length: {maximum: 140}}
end

class Category < ApplicationRecord
    has_many :publications, dependent: :nullify

end

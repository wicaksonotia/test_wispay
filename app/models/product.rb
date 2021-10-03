class Product < ApplicationRecord
    belongs_to :users, optional: true

    after_create do
        UpdateIsActiveJob.set(wait: 1.minutes).perform_later(id,user_id)
    end
end

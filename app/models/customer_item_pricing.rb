class CustomerItemPricing < ApplicationRecord
    belong_to :item_id, class_name: 'Item'
    validates :item_id, presence: true

    belong_to :customer_id, class_name: 'Customer'
    validates :customer_id, presence: true

    belong_to :pricing_id, class_name: 'Pricing'
    validates :pricing_id, presence: true
end

class Customer < ApplicationRecord
  has_one_attached :image
  def self.ransackable_attributes(auth_object = nil)
    %w[full_name phone_number email_address notes]
  end
  validates :full_name, presence: true
end

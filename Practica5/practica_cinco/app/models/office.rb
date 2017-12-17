class Office < ApplicationRecord

  def to_s
    "Office #{self.name} - Telephone: #{self.phone_number} - Address: #{self.address} - Available: #{self.available}"
  end
end

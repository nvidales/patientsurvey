class Question < ApplicationRecord

  validates :firstName, :lastName, :phoneNumber, :presence => true
  validates :phoneNumber, :length => {:minimum => 12}

  def self.to_csv(options = {})
      CSV.generate(options) do |csv|
        csv << column_names
        all.each do |product|
          csv << product.attributes.values_at(*column_names)
        end
      end
  end
end

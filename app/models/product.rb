require 'csv'

class Product < ApplicationRecord
  has_many :order
  validates :nombre, presence: true;
  validates :descripcion, presence: true;
  validates :marca, presence: true;
  validates :categoria, presence: true;
  validates :cantidad, presence: true;
  validates :precio, presence: true;

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |product|
        csv << product.attributes.values_at(*column_names)
      end
    end
  end
end

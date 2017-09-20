class Product < ApplicationRecord
  has_many :order
  validates :nombre, presence: true;
  validates :descripcion, presence: true;
  validates :marca, presence: true;
  validates :categoria, presence: true;
  validates :cantidad, presence: true;
  validates :precio, presence: true;
end

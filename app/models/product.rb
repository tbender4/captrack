class Product < ApplicationRecord
  # t.string "part_number"
  # t.string "mfr_part_number"
  # t.integer "quantity"
  # t.string "pkg"
  # t.string "status"
  # t.string "type"
  validates :part_number, presence: true
end

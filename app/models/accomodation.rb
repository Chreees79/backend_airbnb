class Accomodation < ApplicationRecord
  before_validation :available_beds_valid?
  before_validation :price_valid?
  validates :available_beds, presence: true
  validates :price, presence: true
  validates :description, presence: true, length: { minimum: 140 }
  validates :welcome_message, presence: true
  belongs_to :city
  belongs_to :admin, class_name: "User"
  has_many :bookings

  # def overlaping_reservation?(fin, debut)
  #   self.bookings.each do |booking|
  #     p = booking.start_date..booking.end_date
  #     if p.include?(fin) || p.include?(debut)
  #       return true
  #     end
  #   end
  # end

  def available_beds_valid?
    if self.available_beds < 0
      errors.add(:available_beds, "must be greater than 0")
    end
  end

  def price_valid?
    if self.price < 0
      errors.add(:price, "must be greater than 0")
    end
  end
end
 
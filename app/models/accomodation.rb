class Accomodation < ApplicationRecord
  validates :available_beds, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :welcome_message, presence: true
  belongs_to :city
  belongs_to :admin, class_name: "User"
  has_many :bookings

  def overlaping_reservation?(fin, debut)
    self.bookings.each do |booking|
      p = booking.start_date..booking.end_date
      if p.include?(fin) || p.include?(debut)
        return true
      end
    end
  end
end
 
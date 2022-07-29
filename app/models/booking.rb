class Booking < ApplicationRecord
  before_validation :start_must_be_before_end_date
  before_validation :overlaping_reservation?
  validates :start_date, presence: true
  validates :end_date, presence: true

  belongs_to :admin, class_name: "User"
  belongs_to :guest, class_name: "User"
  belongs_to :accomodation


  # def valid_booking
  #   errors.add(:accomodation, "must be available") unless
  #     self.accomodation.overlaping_reservation?(self.end_date, self.start_date) == false
  # end

  def overlaping_reservation?
    self.accomodation.bookings.each do |booking|
      if self.start_date < booking.end_date &&  self.end_date > booking.start_date
        return errors.add(:start_date, "This period has already booked!")
      end
    end
  end

  private

  def start_must_be_before_end_date
    errors.add(:start_date, "must be before end time") unless
      start_date < end_date
  end 
end
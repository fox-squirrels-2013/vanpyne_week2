class Event < ActiveRecord::Base
  validates :date, presence: true
  validates :organizer_name, presence: true
  validates :title, uniqueness: true
  validates :title, presence: true
  validates_format_of :organizer_email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  # validate :date_passed

  # def date_passed
  #   if date < Date.today
  #     errors.add(:date, "can't be in the past")
  #   end
  # end

end

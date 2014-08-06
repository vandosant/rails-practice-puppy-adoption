class PlayDate < ActiveRecord::Base
  belongs_to :puppy

  validate :date_after_today

  def date_after_today
    if self.date < Date.today
      errors.add(:base, "You cannot choose a date in the past!")
    end
  end
end
class BeerClub < ActiveRecord::Base
  include AverageRating

  has_many :memberships, dependent: :destroy
  has_many :members, through: :memberships, source: :user


  def year_date_cannot_be_in_the_future
    if self.founded > Date.today.year
      errors.add(:founded, "Can not be established in the future")
    end
  end
end

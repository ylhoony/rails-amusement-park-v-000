class Ride < ActiveRecord::Base
  # write associations here
  belongs_to :attraction
  belongs_to :user

  def take_ride
    if !enough_tickets? && !meet_min_height?
      return "Sorry. You do not have enough tickets to ride the #{self.attraction.name}. You are not tall enough to ride the #{self.attraction.name}."
    elsif !enough_tickets?
      return "Sorry. You do not have enough tickets to ride the #{self.attraction.name}."
    elsif !meet_min_height?
      return "Sorry. You are not tall enough to ride the #{self.attraction.name}"
    end

    self.user.update(
      tickets: update_user_tickets,
      nausea: update_user_nausea,
      happiness: update_user_hapiness)

  end

  def enough_tickets?
    self.user.tickets >= self.attraction.tickets
  end

  def meet_min_height?
    self.user.height >= self.attraction.min_height
  end

  def update_user_tickets
    self.user.tickets - self.attraction.tickets
  end

  def update_user_nausea
    self.user.nausea + self.attraction.nausea_rating
  end

  def update_user_hapiness
    self.user.happiness + self.attraction.happiness_rating
  end


end

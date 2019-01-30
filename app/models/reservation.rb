class Reservation < ActiveRecord::Base
  belongs_to :user
  belongs_to :host

  def final_cost
    self.length_of_stay * self.host.base_price
  end

end
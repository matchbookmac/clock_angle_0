class String
  define_method(:clock_angle?) do
    # convert input to hour
    hour = self.to_i()

    # convert hour to degrees
    hour_deg = hour.*(30)
    if hour_deg.%(360).==(0)
      hour_deg = 0
    end

    # convert input to minutes
    if self.length.==(5)
      mins = self[3..4].to_i()
    elsif self.length.==(4)
      mins = self[2..3].to_i()
    end

    # .abs().modulo(1).round(2).*(100).to_i()
    mins_deg = mins.*(6)

    # subtract degrees of hands
    angle = nil

    if hour_deg.>mins_deg
      angle = hour_deg.-(mins_deg)
    elsif mins_deg.>hour_deg
      angle = mins_deg.-(hour_deg)
    elsif mins_deg.==(hour_deg)
      angle = 0
    end

    # return angle
    angle
  end
end

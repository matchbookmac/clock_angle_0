require('rspec')
require('clock_angle')

describe('Array#clock_angle?') do
  it('returns the angle between the hour hand of the clock and the minute hand of the clock') do
    expect("12:00".clock_angle?()).to(eq(0))
  end
  it('') do
    expect("12:45".clock_angle?()).to(eq(270))
  end
  it('') do
    expect("1:05".clock_angle?()).to(eq(0))
  end
  it('') do
    expect("9:30".clock_angle?()).to(eq(90))
  end
end

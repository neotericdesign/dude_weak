require 'dude_weak'

describe Week do
  let(:today) { Time.parse('Jul 11, 2012') }
  let(:week) { Week.new(today) }

  it "returns its monday" do
    week.monday.should == Time.parse('Jul 9, 2012')
  end

  it "returns its number" do
    week.number.should == 28
  end

  it "returns its year" do
    week.year.should == 2012
  end

  it "returns its next week" do
    week = Week.new(Time.parse('Dec 29, 2012'))

    next_week = week.next
    next_week.year.should == 2013
    next_week.number.should == 1
  end

  it "returns its previous week" do
    # weeks start on mondays, Jan 2 2012 is a Monday
    week = Week.new(Time.parse('Jan 2, 2012'))

    last_week = week.previous
    last_week.year.should == 2011
    last_week.number.should == 52
  end

  it "returns its days" do
    daynames = %w(Monday
                  Tuesday
                  Wednesday
                  Thursday
                  Friday
                  Saturday
                  Sunday)
    week.days.each_with_index do |day, i|
      day.dayname.should == daynames[i]
    end
  end

  it "allows dynamic attributes in its days" do
    week.days.first.things = [1, 2, 3]
    week.days.first.things.should == [1, 2, 3]
  end
end


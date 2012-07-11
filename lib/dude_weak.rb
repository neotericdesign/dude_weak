require "dude_weak/version"
require 'active_support/all'
require 'ostruct'
require 'date'

class Week
  attr_accessor :date, :time

  def initialize(time)
    @time = time
    @date = time.to_date
  end

  def year
    @date.cwyear
  end

  def number
    @date.cweek
  end

  def next
    self.class.new(@date.next_week)
  end

  def previous
    self.class.new(@date.prev_week)
  end

  def monday
    @time.monday
  end

  def days
    @days ||= []
    return @days unless @days.empty?
    build_days
    @days
  end

  private
  def build_days
    7.times do |n|
      @days << Day.new(:date => current_date(n),
                       :dayname => current_dayname(n))
    end
  end

  def current_date(n)
    monday.advance(:days => n)
  end

  def current_dayname(n)
    current_date(n).strftime('%A')
  end

  class Day
    def initialize(attrs)
      @source = OpenStruct.new(attrs)
    end

    def method_missing(method, *args, &block)
      @source.send(method, *args, &block)
    end
  end
end

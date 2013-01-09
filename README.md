# DudeWeak

Get a Week object starting on that week's Monday, given a date object

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'dude_weak'
```

And then execute:

```
$ bundle
```

## Usage

```ruby
# let(:today) { Time.parse('Jul 11, 2012') }
# let(:week)  { Week.new(today) }

week.monday #=> Time.parse('Jul 9, 2012')
week.number #=> 28
week.year   #=> 2012
```

### Next Week

```ruby
# let(:today) { Time.parse('Dec 29, 2012') }
# let(:week)  { Week.new(today) }

week.next.year   #=> 2013
week.next.number #=> 1
```

### Previous Week

```ruby
# let(:today) { Time.parse('Jan 2, 2012') }
# let(:week)  { Week.new(today) }

week.previous.year   #=> 2011
week.previous.number #=> 52
```

### Days

```ruby
# let(:today) { Time.parse('Jul 11, 2012') }
# let(:week)  { Week.new(today) }
    
days = week.days

days[0].dayname #=> 'Monday'
days[1].dayname #=> 'Tuesday'
days[2].dayname #=> 'Wednesday'
days[3].dayname #=> 'Thursday'
days[4].dayname #=> 'Friday'
days[5].dayname #=> 'Saturday'
days[6].dayname #=> 'Sunday'
```
    
### Attach things to days

```ruby
# let(:today) { Time.parse('Jul 11, 2012') }
# let(:week)  { Week.new(today) }

a = Thing.new
b = Something.new
c = Coolthing.new
    
week.days[0].things = [a, b, c]
    
week.days[0].things #=> [a, b, c]
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

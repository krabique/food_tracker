require 'io/console'
require 'time'

class Time
  def add_hours(h)
    self + (3600 * h)
  end
  
  def hours_and_minutes
    self.strftime('%H:%M')
  end
end

def prompt(*args)
  print(*args)
  gets
end

time = Time.strptime(prompt('Breakfast:  '), '%H:%M')

breakfast = time
elevenses = time.add_hours(2.5)
dinner = elevenses.add_hours(2.5)
tea = dinner.add_hours(3)
supper = tea.add_hours(3)

print 'Elevenses:  ' + elevenses.hours_and_minutes   + "\n" +
      'Dinner:     ' + dinner.hours_and_minutes      + "\n" +
      'Tea:        ' + tea.hours_and_minutes         + "\n" +
      'Supper:     ' + supper.hours_and_minutes      + "\n"


print "\n---- press any key to exit this shit ----\n"
STDIN.getch

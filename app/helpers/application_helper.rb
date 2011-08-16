module ApplicationHelper
  def hours_helper
    case Time.now.strftime("%A")
    when "Sunday"
      "closed"
    when "Monday", "Tuesday", "Wednesday", "Thursday", "Friday"
      "open from 7a until 3p"
    when "Saturday"
      "closed"
    end
  end
end

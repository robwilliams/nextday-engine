module NextdaysHelper

  def date_today
    Date.today
  end

  def working_day?
    date_today.working_day?
  end

  def cut_off_time
  end

  def cut_off
  end

  def despatch_day
    if date_today.working_day?
      date_today
    else
      date_today.next_working_day
    end
  end
  
  def delivery_day
    despatch_day.next_working_day
  end
end

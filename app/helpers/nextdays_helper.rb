module NextdaysHelper
  
  def despatch_day
    Time.zone.now.despatch_day
  end

  def despatch_day_in_english
    despatch_day.strftime("%A #{despatch_day.day.ordinalize} %B")
  end

  def delivery_day
    Time.zone.now.delivery_day
  end

  def delivery_day_in_english
    delivery_day.strftime("%A #{delivery_day.day.ordinalize} %B")
  end
  
  def cut_off_time
    Time.zone.now.cut_off_time
  end
end

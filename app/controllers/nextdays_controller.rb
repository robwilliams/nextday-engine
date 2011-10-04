class NextdaysController < ApplicationController
  
  def show
    render :json => {
      :despatch_day => Time.zone.now.despatch_day,
      :delivery_day => Time.zone.now.delivery_day,
      :cut_off_time => Time.zone.now.despatch_day.cut_off_time,
      :current_time => Time.zone.now
    }
  end
end

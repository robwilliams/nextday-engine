class NextdaysController < ApplicationController
  
  def show
    render :json => {
      :despatch_day => Time.now.despatch_day,
      :delivery_day => Time.now.delivery_day,
      :cut_off_time => Time.now.despatch_day.cut_off_time,
      :current_time => Time.now
    }
  end
end

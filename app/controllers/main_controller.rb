class MainController < ApplicationController
  def home
  end

  def result
    
    @dobyear = params[:date][:dob_year]
    @dobmonth = params[:date][:dob_month]
    @dobday = params[:date][:dob_day]
    begin
    @dob = Date.new(@dobyear.to_i, @dobmonth.to_i, @dobday.to_i)
    @tenk = @dob + 10000.days
  rescue
    redirect_to root_path
  end
    
  end
end

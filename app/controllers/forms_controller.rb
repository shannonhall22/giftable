class FormsController < ApplicationController

  def homepage
    render "homepage"
  end

  def profile_view
    render "profile_view"
  end

  def profile_edit_display
    render "profile_edit_display"
  end

  def profile_edit_process
    @first_name = params["first_name"]
    @last_name = params["last_name"]
    @address_first = params["address_first"]
    @address_second = params["address_second"]
    @city = params["city"]
    @state = params["state"]
    @zip = params["zip"]
    @birthday_month = params["birthday_month"]
    @birthday_day = params["birthday_day"]
    @birthday_year = params["birthday_year"]
    @anniversary_month = params["anniversary_month"]
    @anniversary_day = params["anniversary_day"]
    @anniversary_year = params["anniversary_year"]
    @other = params["other"]
    @other_month = params["other_month"]
    @other_day = params["other_day"]
    @other_year = params["other_year"]

    render "profile_edit_process"
  end
end

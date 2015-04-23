class FormsController < ApplicationController

  def homepage

  end

  def profile_view

  end

  def profile_edit_form

  end

  def profile_edit_process
    @email_new = params["email"]
    @password_new = params["password"]

    @first_name = params["first_name"]
    @last_name = params["last_name"]
    @address_first = params["address_first"]
    @address_second = params["address_second"]
    @city = params["city"]
    @state = params["state"]
    @zip = params["zip"]

    @birthday_month = params["birthday"]
    @birthday_day = params["birthday_day"]
    @birthday_year = params["birthday_year"]
    @anniversary_month = params["anniversary"]
    @anniversary_day = params["anniversary_day"]
    @anniversary_year = params["anniversary_year"]
    @other = params["other"]
    @other_month = params["other"]
    @other_day = params["other_day"]
    @other_year = params["other_year"]


  end

  def personal_information_form
    @email_new = params["email"]
    @password_new = params["password"]

    @birthday_month = params["birthday"]
    @birthday_day = params["birthday_day"]
    @birthday_year = params["birthday_year"]
    @anniversary_month = params["anniversary"]
    @anniversary_day = params["anniversary_day"]
    @anniversary_year = params["anniversary_year"]
    @other = params["other"]
    @other_month = params["other"]
    @other_day = params["other_day"]
    @other_year = params["other_year"]
  end

end

class StaticController < ApplicationController

  # caches_page :portfolio, :team, :testimonials

  def portfolio
    @products = PRODUCTS.select { |p| p[:display] }
    @keywords = "Products"
    @description = ""
    @title = 'Our Products | Bhagwant Export'
  end

  def team
  end

  def home
    @products = PRODUCTS.select { |p| p[:display] }
    @title = "Bhagwant Export"
  end

  def ping
    render :text => 'Hello'
  end

  def contact_us
    @title = 'Contact Us | Bhagwant Export'
  end

  def about_us
    @title = 'About Us | Bhagwant Export'
  end

  def thankyou
    @title = 'Thank you | Bhagwant Export'
  end

end

class StaticController < ApplicationController

  # caches_page :portfolio, :team, :testimonials

  def portfolio
    @products = PRODUCTS.select { |p| p[:display] }
    @keywords = "fruits vegetables grains"
    @description = "Leading exportes of fruits vegetables and grains"
    @title = 'Bhagwant Export | Our Products'
  end

  def team
  end

  def home
    @products = PRODUCTS.select { |p| p[:display] }
    @title = "Leading exporters of fresh fruits and vegetables | Bhagwant Export"
    @keywords = "Bhagwant Export"
  end

  def ping
    render :text => 'Hello'
  end

  def contact_us
    @title = 'Bhagwant Export | Contact Us'
    @keywords = "Bhagwant Export"
    @description = "Contact Us at Bhagwant export for fresh organic farm grown products"
  end

  def about_us
    @title = 'Fruits and vegetables exporters | About Us'
    @keywords = "Bhagwant export | fresh fruits vegetables exporters in indina"
  end

  def thankyou
    @title = 'Thank you | Bhagwant Export'
  end

end

class PagesController < ApplicationController

  def home
  end

  def about
  end

  def hr
  end

  def franchisee
  end

  def projects
    search = params[:countries]
    @countries = ['Andorra', 'Belgium', 'Canada',
      'Denmark', 'Finland', 'Germany', 'India', 'Japan']

      if search.present?
        @countries =@countries.select { |name| name.downcase == search.downcase }
      end

  end

end

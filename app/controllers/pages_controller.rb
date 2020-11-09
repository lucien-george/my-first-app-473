class PagesController < ApplicationController
  def about
  end

  def contact
    search_query = params[:member]
    @members = [ 'arthur', 'ben', 'alex', 'katherine', 'rebecca', 'laura', 'celine' ]

    if search_query.present?
      @members = @members.select { |member| member == search_query }
    end
  end

  def home
    @time = Date.today.strftime('%A, %b %d')
  end
end

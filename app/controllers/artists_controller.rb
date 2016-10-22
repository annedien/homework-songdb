class ArtistsController < ApplicationController
# PAGES
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end
# END OF PAGES

# FILTERING SYSTEM

  def order_by_name
    @artists = Artist.order_by_name
    render action: :index
  end

  def order_by_date
    @artists = Artist.order_by_date
    render action: :index
  end

# END OF FILTERING SYSTEM

end

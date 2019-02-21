class UrlsController < ApplicationController
  def shorten
    @url = Url.new
  end

  def create
    @url = Url.create(url_params)
    redirect_to action: 'show', id: @url.id
  end

  def show
    @url = Url.find(params[:id])
    # binding.pry
  end

  private
    def url_params
      params.require(:url).permit(:oldurl, :id)
    end

end

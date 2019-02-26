class UrlsController < ApplicationController
  def shorten
    @url = Url.new
  end

  def create
    @url = Url.new(url_params)
    @url['newurl'] =  gen_hash(@url['oldurl'])
    @url.save!
    redirect_to action: 'redirecturl', id: @url.id
  end

  def show
    @url = Url.friendly.find(params[:id])
    redirect_to "http://www.#{@url.oldurl}"
  end
  
  def redirecturl
    @url = Url.find(params[:id])
  end

  private
    def url_params
      params.require(:url).permit(:oldurl)
    end

end

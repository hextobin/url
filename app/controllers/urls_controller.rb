class UrlsController < ApplicationController
  def shorten
    @url = Url.new
  end

  def create
    @url = Url.create(url_params)
  end

  private
    def url_params
      params.require(:url).permit(:oldurl)
    end

end

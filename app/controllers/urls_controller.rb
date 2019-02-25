class UrlsController < ApplicationController
  def shorten
    @url = Url.new
  end

  def create
    @url = Url.new(url_params)
    @url['newurl'] =  gen_hash(@url['oldurl'])
    @url.save!
    redirect_to action: 'show', id: @url.id
  end

  def show
    @url = Url.find(params[:id])
  end

  private
    def url_params
      params.require(:url).permit(:oldurl)
    end

end

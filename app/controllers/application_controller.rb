class ApplicationController < ActionController::Base
  def gen_hash(url)
    return Digest::MD5.hexdigest(url).scan(/[a-zA-Z]/).join("")
  end
end

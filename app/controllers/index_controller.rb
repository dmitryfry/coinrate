require 'open-uri'

class IndexController < ApplicationController

  def index
    if Assetpair.count == 0
      Assetpair.new.add_pair
    end
    @assetpairs = Assetpair.all
  end
end

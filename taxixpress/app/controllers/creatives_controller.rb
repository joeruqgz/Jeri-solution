class CreativesController < ApplicationController
  layout "creative"

  def index
    #@rates = Rate.all.by_origin
    @rates = Rate.all
  end
  
end

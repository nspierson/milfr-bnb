class MothersController < ApplicationController
  def index
    @mothers = Mother.all
  end
end

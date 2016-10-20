class ColorsController < ApplicationController
  skip_before_filter  :verify_authenticity_token, only: [:create]

  def index
    @color = Color.last
  end

  def create
    Color.create(rgb: params[:rgb])
  end
end

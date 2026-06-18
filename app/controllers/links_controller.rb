class LinksController < ApplicationController
  def index
    @links = Link.all
  end
  def redirect
    @destination = Link.find_by(name: params[:name])
    render file: Rails.public_path.join("404.html"), status: :not_found, layout: false unless @destination
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.new(link_params)
    if @link.save
      redirect_to '/'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def link_params
    params.expect(link: [:name, :link])
  end
end

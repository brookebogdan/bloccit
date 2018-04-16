class PagesController < ApplicationController
  def show
  end
  render template: "contact/#{params[:page]}"
end
end

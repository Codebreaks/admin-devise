class StaticPagesController < ApplicationController
  # before_action :authenticate_user!
  before_action :admin_only, :except => :show
  def home
  end

  def help
  end
end

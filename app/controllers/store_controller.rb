class StoreController < ApplicationController
  before_filter :authenticate_user!
  before_filter do
    redirect_to yoti_path unless current_user && !current_user.yoti_id.nil?
  end



end

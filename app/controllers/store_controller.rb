class StoreController < ApplicationController
  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    store_path
  end
end

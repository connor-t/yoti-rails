class YotiController < ApplicationController
  before_action :authenticate_user!

  def index
    @yoti_application_id = ENV['YOTI_APPLICATION_ID']
  end

  def profile
    yoti_activity_details = Yoti::Client.get_activity_details(params[:token])

    if yoti_activity_details.outcome == 'SUCCESS'
      @user_id = yoti_activity_details.user_id

      user_profile = yoti_activity_details.user_profile
      @photo = user_profile['selfie']
      @given_names = user_profile['given_names']
      @family_name = user_profile['family_name']
      @mobile_number = user_profile['phone_number']
      @date_of_birth = user_profile['date_of_birth']
      @address = user_profile['post_code']
      @gender = user_profile['gender']
      @nationality = user_profile['nationality']
    else
      render text: 'Error: Fetching the activity details failed.', status: :error
    end
  end
end

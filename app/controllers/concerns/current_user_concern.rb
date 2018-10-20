module CurrentUserConcern
  extend ActiveSupport::Concern

  #override the devise current_user
  def current_user
    #super use the devise current user
    #This is known as the null object pattern ()
    super || guest_user
  end

  def guest_user
    OpenStruct.new(
      name: "Guest",
      first_name: "Guest",
      last_name: "Guest",
      mail: "guest@example.com"
    )
  end

end
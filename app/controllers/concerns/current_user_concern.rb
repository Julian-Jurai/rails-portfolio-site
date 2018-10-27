module CurrentUserConcern
  extend ActiveSupport::Concern

  #override the devise current_user
  def current_user
    #super use the devise current user
    #This is known as the null object pattern ()
    super || guest_user
  end

  def guest_user
    guest = GuestUser.new
    guest.name = "Guest User"
    guest.first_name = "Guest"
    guest.last_name = "Guest"
    guest.email = "guest@example.com"
    guest
  end

end
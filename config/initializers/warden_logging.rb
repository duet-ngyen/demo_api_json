# Warden::Manager.after_authentication do |user, auth, opts|
#   create_activity user, :signin, auth.request.remote_ip
# end

# Warden::Manager.before_logout do |user, auth, opts|
#   create_activity user, :signout, auth.request.remote_ip
#   token = Devise.friendly_token
#   user.update_attributes authentication_token: token if user.present?
# end

# private
# def create_activity user, state, ip
#   Activity.create user: user, state: state, from_ip: ip
# end

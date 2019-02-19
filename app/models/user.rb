class User < ApplicationRecord
  def self.insert(hasher = {})
    user = hasher[:user]
    password = hasher[:password]
    validate_user = /\A[a-z0-9_]{4,16}\z/.match(user)
    validate_pass = /^(?=.*[a-zA-Z])(?=.*[0-9]).{8,16}$/.match(password)
    if validate_user && validate_pass
      User.create(username: user, password: password)
    else
      p "Username should be lowercase with atleast one number \n Password should be 8-16 characters with characters and numbers"
    end
  end
end

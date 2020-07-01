class User < ApplicationRecord
    has_one :profile

    
    has_secure_password
    # As the name suggests, has_secure_password choice
    # It's going to store the password as encrypted string
    # For example, 
    # > User.all.first.password_digest
    #    => "$2a$10$uvDbKM4xUdJIdz1W6dKL7.MGZ.G5d0UD9N2VEQdJv6Zc.pDvAqH0K"
end

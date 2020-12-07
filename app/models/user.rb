class User < ActiveRecord::Base
    has_secure_password
    #bcrypt macro that authenticates passwords by taking in an argument and hashes/salts passwords so I'm never storing 
    #plain passowrds from any user. I never have it, it always exists as something different so I'm not responsible for storing it.
    
    has_many :posts
end
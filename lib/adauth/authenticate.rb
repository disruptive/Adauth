module Adauth
    def self.authenticate(username, password)
        #raise Adtools::User.find(:first, :sAMAccountName => username).inspect
        if user = Adtools::User.find(:first, :sAMAccountName => username)
            return user if user.authenticate(password)
        end
        return false
    end 
end
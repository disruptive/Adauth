require 'spec_helper'

ReturnDataForTest = []

class TestModel
    include Adauth::UserModel
    
    attr_accessor :login, :group_strings, :name, :ou_strings
    
    def self.create!
        @user = self.new
        yield(@user)
        return @user
    end
    
    def self.find_by_login(login)
        ReturnDataForTest.last
    end
    
    def save
        true
    end
end


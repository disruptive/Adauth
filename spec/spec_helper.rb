require 'lib/adauth'
require 'yaml'


def yaml
    YAML::load(File.open('spec/test_data.yml'))
end

def standard_connection
    Adauth.configure do |c|
        c.domain = yaml["domain"]["domain"]
        c.server = yaml["domain"]["server"]
        c.port = yaml["domain"]["port"]
        c.base = yaml["domain"]["base"]
        c.query_user = yaml["domain"]["admin_user"]
        c.query_password = yaml["domain"]["admin_password"]
    end
end
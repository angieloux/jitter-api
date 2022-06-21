class ApplicationController < ActionController::API
    ## All controllers will use Knock for authentication
    include Knock::Authenticable 
end

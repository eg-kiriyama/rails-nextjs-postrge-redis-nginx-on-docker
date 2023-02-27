class UsersController < ApplicationController
    def index
        personal = { 'name' => 'Yamada', 'old' => 27 }
        render :json => personal
    end
end

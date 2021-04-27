class Admin::UsersController < AdminController
   
    #index para fazer a listagem
    def index
        @users = User.order(id: :desc)
        
    end
end

   
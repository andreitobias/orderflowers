class OrdersController < ApplicationController
    def index
        @orders = Order.all
    end
    
    def data
        @orders = Order.all
        respond_to do |format|
            format.js
        end    
    end
    
    def update
        @order = Order.find( params[:id] )
        @order.update(update_params)
          flash[:success] = "Status Updated!"
          redirect_to orders_path
    end
    
    private
    def update_params
         params.require(:order).permit(:status)
    end 
end

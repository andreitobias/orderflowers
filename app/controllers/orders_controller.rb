class OrdersController < ApplicationController
    def index
        @orders = Order.all
    end
    
    def update
        @order = Order.find(params[:id])
        @order.update_attributes!(update_params)
        respond_to do |format|
            format.html{redirect_to orders_url}
            format.js
        end    
    end
    
    private
    def update_params
        params.permit(:status)
    end 
end

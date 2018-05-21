module Api 
    module V1
        class OrdersController < ApplicationController
            def index
                orders = Order.all
                render json: {status: 'SUCCESS', message: 'Loaded all orders', data: orders}, status: :ok
            end
            def show
                order = Order.find(params[:id])
                render json: {status: 'SUCCESS', message: 'Loaded order', data: order}, status: :ok
            end 
            def create
                order = Order.new(order_params)
                
                if order.flower_id <= Flower.count && order.customer_id <= Customer.count      
                    order.save
                    render json: {status: 'SUCCESS', message: 'Order Created', data: order}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'Order not Created. Please pick from existing flowers or customers', data: order.errors}, status: :unprocessable_entity
                end     
                  
            end    
            
            def update
                order = Order.find(params[:id])
                if order.update_attributes(update_params)
                    render json: {status: 'SUCCESS', message: 'Updated order', data: order}, status: :ok
                else
                    render json: {status: 'SUCCESS', message: 'Order not', data: order}, status: :unprocessable_entity
                end    
            end
            
            private
            
            def order_params
                 params.permit(:flower_id,:quantity,:customer_id)
            end    
            
            def update_params
                params.permit(:status)
            end    
        end    
    end    
end    
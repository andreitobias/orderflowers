module Api 
        module V1
                class OrdersController < ApplicationController
                        include OrdersHelper
                        
                        def index
                            orders = Order.all
                            render_success(orders)
                        end
                        
                        def show
                            order = Order.find(params[:id])
                            render_success(order)
                        end 
                        
                        def create
                            order = Order.new(order_params)
                            
                            if order.flower_id <= Flower.count && order.customer_id <= Customer.count      
                                order.save
                                render_success(order)
                            else
                                render_failure(order)
                            end     
                              
                        end    
                        
                        def update
                            order = Order.find(params[:id])
                            if order.update_attributes(update_params)
                                render_success
                            else
                                render_failure
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
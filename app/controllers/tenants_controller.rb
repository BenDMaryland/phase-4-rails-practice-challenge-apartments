class TenantsController < ApplicationController


    
    def index
        tenants =   Tenant.all
  
        render json: tenants 
      end
  
      def update
          tenant=   find_tenant
          tenant.update!(tenant_params)
          render json: tenant
      end
      def show 
          tenant=    find_tenant
          render json: tenant
      end
  
      def destroy
          tenant=    find_tenant
          tenant.destroy!
          render json: no_head
      end
  
      def create
          tenant= Tenant.create!(tenant_params)
          render json: tenant
      end
  
  
      private
  
      def find_tenant
        Tenant.find(params[:id])
      end
  
      def tenant_params
          params.permit(:name, :age)
      end
end

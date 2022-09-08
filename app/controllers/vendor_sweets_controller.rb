class VendorSweetsController < ApplicationController
    def create
        vendor_sweet = VendorSweet.create!(vendor_sweet_params)
        render json: vendor_sweet
    end
    def destroy
        vendor_sweet = VendorSweet.find(params[:id])
        vendor_sweet.destroy
        render json: {}
    end
    private
    def vendor_sweet_params
        params.permit(:price, :vendor_id, :sweet_id)
    end
end

class VendorsController < ApplicationController
    def index
        render json: Vendor.all, each_serializer: VendorIndexSerializer
    end
    def show
        vendor = Vendor.find(params[:id])
        render json: vendor
    end
end

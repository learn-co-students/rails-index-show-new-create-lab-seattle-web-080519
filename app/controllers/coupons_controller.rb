class CouponsController < ApplicationController
    def index
    end
    def show
        @coupon = Coupon.find(params[:id])
    end
    def new
        @coupon = Coupon.new
    end
    def create
        @coupon = Coupon.create(param_check)
        redirect_to coupon_path(@coupon)
    end
    private
    def param_check
        params.require(:coupon).permit(:coupon_code, :store)
    end
end

class CouponsController < ApplicatonController

def index
    @coupons = Coupon.all
end

def new
end

def create
    # @coupon = Coupon.create(
    #     {
    #         :coupon_code => params[:coupon_code], 
    #         :store => params[:store]
    #     }
    # )
    # @coupon = Coupon.new
    # @coupon[:coupon_code] = params[:coupon][:coupon_code]
    # @coupon[:store] = params[:coupon][:store]
    # @coupon.save

    @coupon = Coupon.new
    @coupon.coupon_code = params[:coupon_code]
    @coupon.store = params[:store]
    @coupon.save
    redirect_to coupon_path(@coupon)
end

def show
    @coupon = Coupon.find(params[:id])
end

end
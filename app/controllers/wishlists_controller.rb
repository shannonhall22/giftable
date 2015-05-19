class WishlistsController < ApplicationController
  def index
    @wishlists = Wishlist.all
  end

  def show
    @wishlist = Wishlist.find(params[:id])
  end

  def new
    @wishlist = Wishlist.new
  end

  def create
    @wishlist = Wishlist.new
    @wishlist.name = params[:name]
    @wishlist.website = params[:website]
    @wishlist.price = params[:price]
    @wishlist.image_url = params[:image_url]
    @wishlist.user_id = params[:user_id]

    if @wishlist.save
      redirect_to wishlists_url, :notice => "Wishlist created successfully."
    else
      render 'new'
    end
  end

  def edit
    @wishlist = Wishlist.find(params[:id])
  end

  def update
    @wishlist = Wishlist.find(params[:id])

    @wishlist.name = params[:name]
    @wishlist.website = params[:website]
    @wishlist.price = params[:price]
    @wishlist.image_url = params[:image_url]
    @wishlist.user_id = params[:user_id]

    if @wishlist.save
      redirect_to wishlist_url(@wishlist.id), :notice => "Wishlist updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @wishlist = Wishlist.find(params[:id])

    @wishlist.destroy

    redirect_to wishlists_url, :notice => "Wishlist deleted."
  end
end

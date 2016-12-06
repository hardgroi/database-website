class ShoppingCartsController < ApplicationController

  def show
    @shopping_cart_items = ShoppingCart.where(user_id: params[:user_id])
  end

  def add
    if ShoppingCart.where(book_id: params[:isbn]).where(user_id: params[:user_id]).first.nil?
      ShoppingCart.new(book_id: params[:isbn], user_id: params[:user_id]).save
      @shopping_cart = ShoppingCart.where(book_id: params[:isbn]).where(user_id: params[:user_id]).first
      CartInfo.new(shopping_cart_id: @shopping_cart.id, item_quantity: 1).save
    else
      @shopping_cart = ShoppingCart.where(book_id: params[:isbn]).where(user_id: params[:user_id]).first
      @cart_info = CartInfo.find_by(shopping_cart_id: @shopping_cart.id)
      @cart_info.item_quantity += 1
      @cart_info.save
    end
  end

  def remove
    @shopping_cart = ShoppingCart.where(book_id: params[:isbn]).where(user_id: params[:user_id]).first
    CartInfo.find_by(shopping_cart_id: @shopping_cart.id).destroy
    @shopping_cart.destroy
    redirect_to :back
  end

end

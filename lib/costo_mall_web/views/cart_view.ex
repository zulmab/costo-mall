defmodule CostoMallWeb.CartView do
  use CostoMallWeb, :view
  alias CostoMallWeb.CartView

  def render("index.json", %{carts: carts}) do
    %{data: render_many(carts, CartView, "cart.json")}
  end

  def render("show.json", %{cart: cart}) do
    %{data: render_one(cart, CartView, "cart.json")}
  end

  def render("cart.json", %{cart: cart}) do
    %{id: cart.id,
      count: cart.count,
      total: cart.total}
  end
end

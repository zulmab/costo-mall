defmodule CostoMallWeb.CartController do
  use CostoMallWeb, :controller

  alias CostoMall.Mall
  alias CostoMall.Mall.Cart

  action_fallback CostoMallWeb.FallbackController

  def index(conn, _params) do
    carts = Mall.list_carts()
    render(conn, "index.json", carts: carts)
  end

  def filtercountergreater(conn, %{"gt" => gt}) do
    carts = Mall.get_carts_count_greater_than(String.to_integer(gt))
    render(conn, "index.json", carts: carts)
  end

  def filtertotalgreater(conn, %{"gt" => gt}) do
    carts = Mall.get_carts_total_greater_than(String.to_integer(gt))
    render(conn, "index.json", carts: carts)
  end

  def filtercountytotalgreater(conn, %{"gt" => gt}) do
    carts = Mall.get_carts_counttotal_greater_than(String.to_integer(gt))
    render(conn, "index.json", carts: carts)
  end

  def create(conn, %{"cart" => cart_params}) do
    with {:ok, %Cart{} = cart} <- Mall.create_cart(cart_params) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", Routes.cart_path(conn, :show, cart))
      |> render("show.json", cart: cart)
    end
  end

  def show(conn, %{"id" => id}) do
    cart = Mall.get_cart!(id)
    render(conn, "show.json", cart: cart)
  end

  def update(conn, %{"id" => id, "cart" => cart_params}) do
    cart = Mall.get_cart!(id)

    with {:ok, %Cart{} = cart} <- Mall.update_cart(cart, cart_params) do
      render(conn, "show.json", cart: cart)
    end
  end

  def delete(conn, %{"id" => id}) do
    cart = Mall.get_cart!(id)

    with {:ok, %Cart{}} <- Mall.delete_cart(cart) do
      send_resp(conn, :no_content, "")
    end
  end
end

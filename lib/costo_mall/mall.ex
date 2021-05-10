defmodule CostoMall.Mall do
  @moduledoc """
  The Mall context.
  """

  import Ecto.Query, warn: false
  alias CostoMall.Repo

  alias CostoMall.Mall.Cart

  @doc """
  Returns the list of carts.

  ## Examples

      iex> list_carts()
      [%Cart{}, ...]

  """
  def list_carts do
    Repo.all(Cart)
  end

  @doc """
  Gets a single cart.

  Raises `Ecto.NoResultsError` if the Cart does not exist.

  ## Examples

      iex> get_cart!(123)
      %Cart{}

      iex> get_cart!(456)
      ** (Ecto.NoResultsError)

  """
  def get_cart!(id), do: Repo.get!(Cart, id)

  @doc """
  Returns the list of carts with count greater than given number
  Raises `Ecto.NoResultsError` if the Cart does not exist.

  ## Examples

      iex> get_carts_count_greater_than!(123)
      %Cart{}

      iex> get_carts_count_greater_than!(456)
      ** (Ecto.NoResultsError)

  """
  def get_carts_count_greater_than(num) do
    query =
      from c in Cart,
        where: c.count > ^num,
        select: c

    Repo.all(query)
  end

  @doc """
  Returns the list of carts with total greater than given number
  Raises `Ecto.NoResultsError` if the Cart does not exist.

  ## Examples

      iex> get_carts_total_greater_than!(123)
      %Cart{}

      iex> get_carts_total_greater_than!(456)
      ** (Ecto.NoResultsError)

  """
  def get_carts_total_greater_than(num) do
    query =
      from c in Cart,
        where: c.total > ^num,
        select: c

    Repo.all(query)
  end

  @doc """
  Returns the list of carts with count y total greater than given number
  Raises `Ecto.NoResultsError` if the Cart does not exist.

  ## Examples

      iex> get_carts_counttotal_greater_than!(123)
      %Cart{}

      iex> get_carts_counttotal_greater_than!(456)
      ** (Ecto.NoResultsError)

  """
  def get_carts_counttotal_greater_than(num) do
    query =
      from c in Cart,
        where: c.total > ^num and c.count > ^num,
        select: c

    Repo.all(query)
  end

  @doc """
  Creates a cart.

  ## Examples

      iex> create_cart(%{field: value})
      {:ok, %Cart{}}

      iex> create_cart(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_cart(attrs \\ %{}) do
    %Cart{}
    |> Cart.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a cart.

  ## Examples

      iex> update_cart(cart, %{field: new_value})
      {:ok, %Cart{}}

      iex> update_cart(cart, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_cart(%Cart{} = cart, attrs) do
    cart
    |> Cart.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a cart.

  ## Examples

      iex> delete_cart(cart)
      {:ok, %Cart{}}

      iex> delete_cart(cart)
      {:error, %Ecto.Changeset{}}

  """
  def delete_cart(%Cart{} = cart) do
    Repo.delete(cart)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking cart changes.

  ## Examples

      iex> change_cart(cart)
      %Ecto.Changeset{data: %Cart{}}

  """
  def change_cart(%Cart{} = cart, attrs \\ %{}) do
    Cart.changeset(cart, attrs)
  end
end

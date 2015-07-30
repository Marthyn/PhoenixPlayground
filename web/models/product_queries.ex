defmodule Product.Queries do
  import Ecto.Query

  def most_expensive do
    query = from product in HelloPhoenix.Product,
            select: product,
            order_by: [desc: product.price],
            limit: 1
    HelloPhoenix.Repo.one(query)
  end
end

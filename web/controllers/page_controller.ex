defmodule HelloPhoenix.PageController do
  use HelloPhoenix.Web, :controller

  alias HelloPhoenix.Product.Queries

  def index(conn, _params) do
    most_expensive_product = Product.Queries.most_expensive
    render(conn, "index.html", product: most_expensive_product)
  end
end

module Factory
  def self.registered_product(product_id, product)
    @registered_products[product_id] = product
  end

  def self.create_product(product_id)
    @registered_products.fetch(product_id).new
  end
end
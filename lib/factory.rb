module Factory
  @registered_products = {}

  def self.register_product(product_id, product)
    @registered_products[product_id] = product.new.class
  end

  def self.create_product(product_id, *args)
      @registered_products.fetch(product_id).new(*args)
  end
end
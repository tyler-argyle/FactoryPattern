module Factory
  @registered_products = {}

  # Usage:
  # Factory.registered_product('id', Product)
  #   Where Product is the name of the class, eg:
  #     Factory.registered_product('id', String)
  def self.registered_product(product_id, product)
    @registered_products[product_id] = product.new('').class
  end

  def self.create_product(product_id)
    @registered_products.fetch(product_id).new product_id
  end
end
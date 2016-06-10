def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin] [:total_cash]
end

def add_or_remove_cash(pet_shop, amount)
  pet_shop[:admin] [:total_cash] += amount
end

def pets_sold(pet_shop)
  return pet_shop[:admin] [:pets_sold]
end

def increase_pets_sold(pet_shop, sold)
  pet_shop[:admin] [:pets_sold] += sold
end

def stock_count(pet_shop)
  return pet_shop[:pets].count
end

def pets_by_breed(pet_shop, breed)

  matched_pets = []

  for pet in pet_shop[:pets]
    matched_pets << pet if pet[:breed] == breed
  end
  return matched_pets
end

# def test_find_pet_by_name__returns_pet
#   pet = find_pet_by_name(@pet_shop, "Arthur")
#   assert_equal(pet[:name], "Arthur")
# end

# def find_pet_by_name(pet_shop, pet_name)



# end
































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

def find_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
      return pet if pet[:name] == pet_name
  end
  return nil
end

def remove_pet_by_name(pet_shop, pet_name)

  for pet in pet_shop[:pets]
    return pet.delete(:name) if pet[:name] == pet_name
  end
  return nil
end

def add_pet_to_stock(pet_shop, new_stock)
  pet_shop[:pets] << new_stock
end

def customer_pet_count(customers)
  return customers[:pets].length
end

def add_pet_to_customer(customers, new_pet)
  return customers[:pets] << new_pet
end

def customer_can_afford_pet(customers, new_pet)
  return customers[:cash] > new_pet[:price] #implicitly will return true or false without having to write if true or false statement.
end

def sell_pet_to_customer(pet_shop, pet, customers)

#this is another way of doing pet != nil.  No need for find pet by name here because the test already calls that method and assigns it to 'pet' hence why pet is used in the if below.
  if (!pet.nil?)
    #customer pet count to increase
    add_pet_to_customer(customers, pet)
    #pets sold to increase
    increase_pets_sold(pet_shop, 1)
    #total cash to be increased
    add_or_remove_cash(pet_shop, pet[:price])
  end
end





























































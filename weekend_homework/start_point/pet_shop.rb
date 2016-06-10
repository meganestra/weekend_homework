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

  #for each pet in the pet shop hash remove the pets with the name arthur
  #return the amended hash

matched_name = []

  for pet in pet_shop[:pets]

    matched_name << pet if pet[:name] == pet_name

  end

  return pet_shop[:pets][:name].replace(matched_name)
  return pet_shop

end

def remove_pet_by_name(pet_shop, pet_name)

count = 0

  for pet in pet_shop[:pets]

    return pet_shop[:pets].delete_at(pet) if (pet[:name] == pet_name)

  end

end



def remove_pet_by_name(pet_shop, pet_name)

  for pet in pet_shop[:pets]

    return pet.delete(:name) if pet[:name] == pet_name

  end

  return nil

end



































































User.destroy_all
Collection.destroy_all
Recipe.destroy_all

# Users:
hari = User.create(
  username: "hari",
  first_name: "Hari",
  last_name: "Mohan",
  gender: "Male",
  age: 98,
  city: "Miami",
  state_abr: "FL",
  photo_url: "http://placekitten.com/g/200/300",
  password: "harimohan",
  password_confirmation: "harimohan"
)

# Collections:
hari.collections.push(
  breakfast = Collection.create(name: "Breakfast"),
  dinner = Collection.create(name: "Dinner"),
  favorites = Collection.create(name: "Favorites")
)

# Recipes:
breakfast.recipes.push(
  Recipe.create(
    title: "Bacon and Eggs",
    ingredients:
      "Ingredients:
      4 bacon strips
      18 Eggland's Best Eggs
      1 cup milk
      1 cup (4 ounces) shredded cheddar cheese
      1 cup (8 ounces) sour cream
      1/4 cup sliced green onions
      1 to 1-1/2 teaspoons salt
      1/2 teaspoon pepper",
    directions:
      "Prep time: 20 min. | Bake time: 40 min. | Makes: 8-10 servings

      Directions:
      - In a large skillet, cook bacon over medium heat until crisp. Remove to paper towel to drain.
      - In a large bowl, beat eggs. Add milk, cheese, sour cream, onions, salt and pepper.
      - Pour into a greased 13-in. x 9-in. baking dish. Crumble bacon and sprinkle on top.
      - Bake, uncovered, at 325° for 40-45 minutes or until knife inserted near the center comes out clean. Let stand for 5 minutes. Yield: 8-10 servings.",
    image_url: "http://hostedmedia.reimanpub.com/TOH/Images/Photos/37/300x300/exps2200_BB133217B05_31_7b.jpg"
  ),
  Recipe.create(
    title: "French Toast",
    ingredients:
      "Ingredients:
       1 egg
       3/4 cup milk
       1 tablespoon ground cinnamon
       1 teaspoon vanilla extract
       1 pinch salt
       2 slices bread",
    directions:
      "Directions:
      - Beat together egg, milk, cinnamon, vanilla and salt.
      - Heat a lightly oiled skillet or griddle over medium heat.
      - Soak bread slices in egg mixture for 20 second on each side, or until thoroughly coated. Cook bread until both sides are lightly browned and crisp. Serve hot.",
    image_url: "http://images.media-allrecipes.com/userphotos/250x250/01/13/99/1139924.jpg"
  ),
  Recipe.create(
    title: "Cereal and Milk",
    ingredients:
      "Ingredients:
        Cereal
        Milk",
    directions:
      "Directions:
      - Pour cereal into bowl
      - Pour some milk over cereal, not too much
      - Get a spoon",
    image_url: "http://thumbs.dreamstime.com/x/bowl-cereal-413319.jpg"
  )
)

dinner.recipes.push(
  Recipe.create(
    title: "Hamburger",
    ingredients: "Meat, sesame bun",
    directions: "Noms",
    image_url: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSH-pElWLuTStgyzcs-FfQb1rlE3NwUz59qQ--QziRMD5YIepWwvA"
  )
)

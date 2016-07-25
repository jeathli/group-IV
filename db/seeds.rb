Recipe.destroy_all
Ingredient.destroy_all
IngredientsRecipe.destroy_all

lorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin nibh augue, suscipit a, scelerisque sed, lacinia in, mi. Cras vel lorem.
  Etiam pellentesque aliquet tellus. Phasellus pharetra nulla ac diam. Quisque semper justo at risus. Donec venenatis, turpis vel hendrerit interdum,
  dui ligula ultricies purus, sed posuere libero dui id orci. Nam congue, pede vitae dapibus aliquet, elit magna vulputate arcu, vel tempus metus leo non est.
  Etiam sit amet lectus quis est congue mollis. Phasellus congue lacus eget neque. Phasellus ornare, ante vitae consectetuer consequat,
  purus sapien ultricies dolor, et mollis pede metus eget nisi. Praesent sodales velit quis augue. Cras suscipit, urna at aliquam rhoncus,
  urna quam viverra nisi, in interdum massa nibh nec erat."

[
   { name: 'venetian-style pasta', description: lorem },
   { name: 'tomato and thyme cod', description:lorem },
   { name: 'lemon chicken with spring veg noodles', description: lorem },
   { name: 'curry in a hurry', description:lorem },
   { name: '20-minutes beef in red wine', description: lorem }
].each{|x| Recipe.create(x)}

ingredients = [
   { name: 'onion' },
   { name: 'olive oil' },
   { name: 'pasta' },
   { name: 'balsamic vinegar' },
   { name: 'sultana' },
   { name: 'caper' },
   { name: 'pine nut' },
   { name: 'spinach' },
   { name: 'tomato' },
   { name: 'brown sugar' },
   { name: 'thyme' },
   { name: 'soy sauce' },
   { name: 'cod' },
   { name: 'sunflower oil' },
   { name: 'chicken breast' },
   { name: 'caster sugar' },
   { name: 'ginger' },
   { name: 'corn flour' },
   { name: 'pea' },
   { name: 'bean' },
   { name: 'cashews' },
   { name: 'garlic' },
   { name: 'chilli' },
   { name: 'prawns' },
   { name: 'gujarati masala' },
   { name: 'garam masala' },
   { name: 'yogurth' },
   { name: 'coriander' },
   { name: 'steak' },
   { name: 'oregano' },
   { name: 'red wine' },
   { name: 'lemon' }
]

Recipe.all.each do |r|
  5.times do
    r.ingredients.create(ingredients.sample)
  end
end

import numpy as np

cupcake = np.array([2, 0.75, 2, 1, 0.5])
recipes = np.genfromtxt('recipes.csv',
                        delimiter=',')
print(recipes)
eggs = recipes[:,3]
print(eggs)

one_egg_recipe = eggs[eggs == 1]
print(one_egg_recipe) # cupcakes and pancakes

cookies = recipes[2,:]
print(cookies)

double_batch = cupcake * 2
grocery_list = double_batch + cookies
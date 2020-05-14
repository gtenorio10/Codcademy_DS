import pandas as pd

inventory = pd.read_csv('inventory.csv')
print(inventory.head(10))
staten_island= inventory.head(10)
#Select the product_description column and save into variable
product_request = staten_island.product_description
print(product_request)
#Select Brooklyn and Seed and save into variable
seed_request = inventory[(inventory.location == 'Brooklyn') & (inventory.product_type == 'seeds')]
print(seed_request)
#Create a new column called in_stock and put true if quanlity is > 0 else false
inventory['in_stock']= inventory.quantity.apply(lambda item: True if item > 0 else False)
print(inventory.head(10))
#create a new colum called total value and calculated the price times quantity
inventory['total_value'] = inventory.price * inventory.quantity
print(inventory.head(10))

combine_lambda = lambda row: 
    '{} - {}'.format(row.product_type,
                     row.product_description)
                     
#Using combine_lambda, create a new column in inventory called full_description that has the complete description of each product.
inventory['full_description'] = inventory.apply(combine_lambda, axis=1)
print(inventory.head(10))
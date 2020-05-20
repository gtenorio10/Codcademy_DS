import pandas as pd

visits = pd.read_csv('visits.csv',
                     parse_dates=[1])
cart = pd.read_csv('cart.csv',
                   parse_dates=[1])
checkout = pd.read_csv('checkout.csv',
                       parse_dates=[1])
purchase = pd.read_csv('purchase.csv',
                       parse_dates=[1])
                       
 print(visits.head())
 print(cart.head())
 print(checkout.head())
 print(purchase.head())
 
 # Combine visits and cart using a left merge.
Visits_Cart = pd.merge(visits, cart, how = "left")
print(len(Visits_Cart))

null_count = len(Visits_Cart[Visits_Cart.cart_time.isnull()])
print(null_count)


no_TShirt_inCart_percentage = float(null_count)/float(len(Visits_Cart)) * 100
print(no_TShirt_inCart_percentage)

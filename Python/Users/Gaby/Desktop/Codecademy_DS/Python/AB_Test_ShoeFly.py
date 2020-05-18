import codecademylib
import pandas as pd

ad_clicks = pd.read_csv('ad_clicks.csv')
print(ad_clicks.head(5))
print(ad_clicks.groupby('utm_source').user_id.count().reset_index())
#https://www.w3schools.com/python/python_operators.asp
ad_clicks['is_click'] = ~ad_clicks.ad_click_timestamp.isnull()
print(ad_clicks.head())

clicks_by_source= ad_clicks.groupby(['utm_source', 'is_click']).user_id.count().reset_index()

click_pivot = clicks_by_source.pivot(columns = 'is_click', index = 'utm_source', values = 'user_id').reset_index()
print(click_pivot)

click_pivot['percent_clicked'] = click_pivot['percent_clicked'] = (click_pivot[True] /(click_pivot[True] + click_pivot[False])) *100
print(click_pivot)

print(ad_clicks.groupby('experimental_group').user_id.count().reset_index())

click_group_pivot = click_group.pivot(columns = 'is_click', index = 'experimental_group', values = 'user_id').reset_index()
print(click_group_pivot)

a_clicks = ad_clicks[
   ad_clicks.experimental_group
   == 'A']
b_clicks = ad_clicks[
   ad_clicks.experimental_group
   == 'B']

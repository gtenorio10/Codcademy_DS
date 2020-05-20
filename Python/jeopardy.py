import pandas as pd
pd.set_option('display.max_columns', None)
pd.set_option('display.max_colwidth', -1)

# Reading in the file
jeopardy_df = pd.read_csv('jeopardy.csv')
print(jeopardy_df.head(5))

# Print columns name
print(list(jeopardy_df.columns))

# Rename column name
jeopardy_df.rename(columns = {
  ' Air Date': 'Air Date',
  ' Round': 'Round',
  ' Category': 'Category',
  ' Value': 'Value',
  ' Question': 'Question',
  ' Answer': 'Answer'
    }, inplace = True)

print(list(jeopardy_df.columns))




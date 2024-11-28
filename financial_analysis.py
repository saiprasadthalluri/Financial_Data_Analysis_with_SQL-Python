# financial_analysis.py

import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
from sqlalchemy import create_engine

# Connect to the database
engine = create_engine('mysql+pymysql://root:password@localhost/FinancialAnalysis')

# Load data into pandas DataFrames
customers = pd.read_sql('SELECT * FROM Customers', engine)
accounts = pd.read_sql('SELECT * FROM Accounts', engine)
transactions = pd.read_sql('SELECT * FROM Transactions', engine)

# Analysis
# Example: Calculate total deposits and withdrawals for each account
transaction_summary = transactions.groupby(['AccountID', 'TransactionType']).agg({'Amount': 'sum'}).unstack().fillna(0)
transaction_summary.columns = ['Total_Deposits', 'Total_Withdrawals']
transaction_summary['Net_Amount'] = transaction_summary['Total_Deposits'] - transaction_summary['Total_Withdrawals']

# Visualization
# Example: Plot the net amount for each account
plt.figure(figsize=(10, 6))
sns.barplot(x=transaction_summary.index, y=transaction_summary['Net_Amount'])
plt.title('Net Amount by Account')
plt.xlabel('AccountID')
plt.ylabel('Net Amount')
plt.show()

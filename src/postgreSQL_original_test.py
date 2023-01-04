import psycopg2

def post_conn():
    # establishing the connection
    conn = psycopg2.connect(
       database="stock_db", user='postgres', password='password', host='127.0.0.1', port='5432'
    )

    # Creating a cursor object using the cursor() method
    cursor = conn.cursor()

    # Executing an MYSQL function using the execute() method
    cursor.execute("select version()")

    # Fetch a single row using fetchone() method.
    data = cursor.fetchone()
    print("Connection established to: here !!!", str(data))

    # Closing the connection
    conn.close()

post_conn()
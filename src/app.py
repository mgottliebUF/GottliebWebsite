from flask import Flask, render_template
import sqlite3

app = Flask(__name__)

@app.route('/')
def main():
    # Assuming the database file 'performance.db' is in the same directory as your app.py
    database_path = 'performance.db'
    # Connect to the SQLite database
    conn = sqlite3.connect(database_path)
    cursor = conn.cursor()

    # SQL query to select non-zero data
    query = """
    SELECT * FROM performance
    WHERE bench_press <> 0 AND squat <> 0 AND deadlift <> 0
    ORDER BY week ASC;
    """
    
    try:
        cursor.execute(query)
        data = cursor.fetchall()  # Fetch all non-zero data rows
    except sqlite3.Error as e:
        print(f"Database error: {e}")
        data = []
    finally:
        conn.close()

    # Pass the data to a template to display in the browser
    return render_template('performance.html', data=data)

if __name__ == '__main__':
    app.run(debug=True)


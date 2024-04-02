from flask import Flask, render_template, jsonify
import sqlite3

app = Flask(__name__)

@app.route('/')
def main():
    database_path = r'C:\ApplicationsProject\performance.db'
    conn = sqlite3.connect(database_path)
    cursor = conn.cursor()

    query = """
    SELECT * FROM performance
    WHERE bench_press <> 0 AND squat <> 0 AND deadlift <> 0
    ORDER BY week ASC;
    """

    try:
        cursor.execute(query)
        data = cursor.fetchall()
    except sqlite3.Error as e:
        print(f"Database error: {e}")
        data = []
    finally:
        conn.close()

    # Convert data into a format that can be easily used in JavaScript
    weeks, bench_press, squat, deadlift = zip(*data)
    chart_data = {
        'weeks': weeks,
        'bench_press': bench_press,
        'squat': squat,
        'deadlift': deadlift
    }

    return render_template('performance.html', chart_data=chart_data)

if __name__ == '__main__':
    app.run(debug=True)

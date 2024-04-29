from flask import Flask, render_template, request, redirect, url_for
import pymysql

app = Flask(__name__, template_folder='templates')

# Database connection parameters
DB_HOST = 'localhost'
DB_PORT = 3306  # Note: MySQL default port is an integer
DB_USER = 'root'
DB_PASSWORD = '12345678'
DB_NAME = 'hm'

# Function to establish database connection
def connect_to_database():
    try:
        conn = pymysql.connect(host=DB_HOST, port=DB_PORT, user=DB_USER, password=DB_PASSWORD, database=DB_NAME)
        return conn
    except pymysql.Error as e:
        print("Error connecting to the database:", e)
        return None

# Function to fetch product data from MySQL
def fetch_products():
    conn = connect_to_database()
    if conn:
        try:
            cursor = conn.cursor()
            cursor.execute("""
                SELECT p.id, p.name, p.price, i.img1, i.img2, i.img3
                FROM products p
                INNER JOIN product_images i ON p.id = i.product_id
            """)
            products = cursor.fetchall()
            cursor.close()
            conn.close()  # Close the database connection
            return products
        except pymysql.Error as e:
            print("Error fetching products:", e)
            return None

# Function to search products in the database
def search_products(keyword):
    conn = connect_to_database()
    if conn:
        try:
            cursor = conn.cursor()
            # Query to fetch product details and corresponding images
            cursor.execute("""
                SELECT p.id, p.name, p.price, i.img1, i.img2, i.img3
                FROM products p
                LEFT JOIN product_images i ON p.id = i.product_id
                WHERE p.category LIKE %s
            """, ('%' + keyword + '%',))
            products = cursor.fetchall()
            cursor.close()
            conn.close()  # Close the database connection
            return products
        except pymysql.Error as e:
            print("Error searching products:", e)
            return None

# Function to filter and order products
def order(option, category):
    conn = connect_to_database()
    print("cat: ",category)
    if conn:
        try:
            cursor = conn.cursor()
            if option == 'ascending':
                cursor.execute("""
                    SELECT p.id, p.name, p.price, i.img1, i.img2, i.img3
                    FROM products p
                    LEFT JOIN product_images i ON p.id = i.product_id
                    WHERE p.category = %s
                    ORDER BY p.price ASC
                """, (category,))
            elif option == 'descending':
                cursor.execute("""
                    SELECT p.id, p.name, p.price, i.img1, i.img2, i.img3
                    FROM products p
                    LEFT JOIN product_images i ON p.id = i.product_id
                    WHERE p.category = %s
                    ORDER BY p.price DESC
                """, (category,))
            else:
                cursor.execute("""
                    SELECT p.id, p.name, p.price, i.img1, i.img2, i.img3
                    FROM products p
                    LEFT JOIN product_images i ON p.id = i.product_id
                    WHERE p.category = %s
                """, (category,))
            products = cursor.fetchall()
            cursor.close()
            conn.close()  # Close the database connection
            if products:
                print("products in order: ", products)
            else:
                print("No products found for category:", category)
            return products
        except pymysql.Error as e:
            print("Error ordering products:", e)
            return None


# Function to filter products by size
def filter(size, category):
    conn = connect_to_database()
    print(category)
    if conn:
        try:
            cursor = conn.cursor()
            if size is not None:
                cursor.execute("""
                    SELECT p.id, p.name, p.price, i.img1, i.img2, i.img3
                    FROM products p
                    LEFT JOIN product_images i ON p.id = i.product_id
                    LEFT JOIN product_sizes ps ON p.id = ps.product_id
                    WHERE ps.{} = TRUE AND p.category = %s
                """.format(size), (category,))
            else:
                cursor.execute("""
                    SELECT p.id, p.name, p.price, i.img1, i.img2, i.img3
                    FROM products p
                    LEFT JOIN product_images i ON p.id = i.product_id
                    WHERE p.category = %s
                """, (category,))
            products = cursor.fetchall()
            cursor.close()
            conn.close()  # Close the database connection
            if products:
                print("products in filter: ", products)
            else:
                print("No products found for category:", category)
            return products
        except pymysql.Error as e:
            print("Error filtering products:", e)
            return None


@app.route('/', methods=['GET', 'POST'])
def index():
    if request.method == 'POST':
        keyword = request.form['keyword']
        return redirect(url_for('search_results', q=keyword))
    else:
        products = fetch_products()
        return render_template('index.html', products=products)

@app.route('/search_results')
def search_results():
    keyword = request.args.get('q')
    option = request.args.get('option')
    size = request.args.get('size')
    if keyword:
        if option:
            products = order(option, keyword)
            #print(keyword)
        elif size:
            products = filter(size, keyword)
            print(keyword)

        else:
            products = search_products(keyword)
        count = len(products)
        return render_template('search_result.html', products=products, count=count)
    else:
        return "No search query provided."
    

def get_product_details(product_id):
    print("id: ", product_id)
    conn = connect_to_database()
    if conn:
        try:
            cursor = conn.cursor()
            if product_id is not None:
                cursor.execute("""
                    SELECT p.id, p.name, p.price,
                    i.img1, i.img2, i.img3,
                    ps.xs, ps.s, ps.m, ps.l, ps.xl, ps.xxl
                    FROM products p
                    LEFT JOIN product_images i ON p.id = i.product_id
                    LEFT JOIN product_sizes ps ON p.id = ps.product_id
                    WHERE p.id = %s
                """, (product_id,))
                product = cursor.fetchone()
                print("Product details:", product)
            else:
                product = None
                print("Product details:", product)
            cursor.close()
            return product
        except pymysql.Error as e:
            print("Error fetching product details:", e)
            return None

@app.route('/details/<int:product_id>')
def product_details(product_id):
   product_details=get_product_details(product_id)
   return render_template('details.html', product=product_details)


if __name__ == '__main__':
    app.run(debug=True)

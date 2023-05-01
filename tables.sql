-- Создание таблицы roles
CREATE TABLE roles (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100)
);

-- Создание таблицы staff
CREATE TABLE staff (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  role_id INT,
  salary DECIMAL(10,2),
  FOREIGN KEY (role_id) REFERENCES roles(id)
);

-- Создание таблицы attractions
CREATE TABLE attractions (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  description TEXT,
  price DECIMAL(10,2)
);

-- Создание таблицы orders
CREATE TABLE orders (
  id INT AUTO_INCREMENT PRIMARY KEY,
  client_name VARCHAR(100),
  order_date DATETIME
);

-- Создание таблицы attractions_orders
CREATE TABLE attractions_orders (
  id INT AUTO_INCREMENT PRIMARY KEY,
  order_id INT,
  attraction_id INT,
  hours FLOAT,
  FOREIGN KEY (order_id) REFERENCES orders(id),
  FOREIGN KEY (attraction_id) REFERENCES attractions(id)
);

-- Создание таблицы food
CREATE TABLE food (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  description TEXT,
  price DECIMAL(10,2)
);

-- Создание таблицы food_orders
CREATE TABLE food_orders (
  id INT AUTO_INCREMENT PRIMARY KEY,
  order_id INT,
  food_id INT,
  quantity INT,
  FOREIGN KEY (order_id) REFERENCES orders(id),
  FOREIGN KEY (food_id) REFERENCES food(id)
);

-- Создание таблицы involved_staff
CREATE TABLE involved_staff (
  id INT AUTO_INCREMENT PRIMARY KEY,
  order_id INT,
  staff_id INT,
  FOREIGN KEY (order_id) REFERENCES orders(id),
  FOREIGN KEY (staff_id) REFERENCES staff(id)
);



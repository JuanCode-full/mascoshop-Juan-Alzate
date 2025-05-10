-- database/init.sql
CREATE DATABASE IF NOT EXISTS mascoshop;
USE mascoshop;

CREATE TABLE products (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  price DECIMAL(10, 2) NOT NULL,
  image VARCHAR(255)
);

INSERT INTO products (name, description, price, image) VALUES
  ('Comida para perros', 'Alimento balanceado para perros adultos.', 120000, 'https://via.placeholder.com/200'),
  ('Juguete para gatos', 'Juguete interactivo para gatos.', 25000, 'https://via.placeholder.com/200'),
  ('Collar para perros', 'Collar de cuero para perros pequeños.', 35000, 'https://via.placeholder.com/200'),
  ('Cama para perros', 'Cama suave y cómoda para perros de tamaño mediano.', 120000, 'https://via.placeholder.com/200'),
  ('Paseador de perros', 'Paseador de perros con correa extensible.', 80000, 'https://via.placeholder.com/200'),
  ('Shampoo para mascotas', 'Shampoo suave para la piel de las mascotas.', 30000, 'https://via.placeholder.com/200'),
  ('Rascador para gatos', 'Rascador para gatos con poste alto.', 60000, 'https://via.placeholder.com/200'),
  ('Arenero para gatos', 'Arenero para gatos con tapa.', 70000, 'https://via.placeholder.com/200'),
  ('Alimento para aves', 'Alimento especial para aves tropicales.', 15000, 'https://via.placeholder.com/200'),
  ('Transportadora para gatos', 'Transportadora para gatos con diseño cómodo.', 50000, 'https://via.placeholder.com/200'),
  ('Alimento para peces', 'Alimento para peces tropicales.', 10000, 'https://via.placeholder.com/200'),
  ('Accesorios para roedores', 'Accesorios variados para roedores.', 20000, 'https://via.placeholder.com/200'),
  ('Cama para gatos', 'Cama para gatos de diseño moderno.', 85000, 'https://via.placeholder.com/200'),
  ('Bolsa de transporte para perros', 'Bolsa de transporte para perros pequeños.', 95000, 'https://via.placeholder.com/200'),
  ('Acuario para peces', 'Acuario con filtro para peces.', 250000, 'https://via.placeholder.com/200'),
  ('Peluche para mascotas', 'Peluche suave para mascotas.', 30000, 'https://via.placeholder.com/200'),
  ('Bozal para perros', 'Bozal de seguridad para perros.', 25000, 'https://via.placeholder.com/200'),
  ('Cuchara dosificadora para mascotas', 'Cuchara para medir la comida de las mascotas.', 15000, 'https://via.placeholder.com/200'),
  ('Bebedero para mascotas', 'Bebedero para mascotas de acero inoxidable.', 35000, 'https://via.placeholder.com/200'),
  ('Cepillo para mascotas', 'Cepillo para el pelaje de las mascotas.', 22000, 'https://via.placeholder.com/200');

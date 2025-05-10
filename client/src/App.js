import React, { useState } from "react";
import "./App.css";
import ProductCard from "./components/ProductCard";
import { products } from "./data/products";

function App() {
  const [cart, setCart] = useState([]);

  const addToCart = (product) => {
    setCart([...cart, product]);
  };

  return (
    <div className="app-container">
      <header className="header">
        <h1>MASCOSHOP</h1>
      </header>
      <div className="product-container">
        {products.map((product) => (
          <ProductCard key={product.id} product={product} addToCart={addToCart} />
        ))}
      </div>
      <div className="cart-summary">
        <h2>Cart ({cart.length} items)</h2>
        {cart.length > 0 ? (
          <ul>
            {cart.map((item, index) => (
              <li key={index}>
                {item.name} - {item.price}
              </li>
            ))}
          </ul>
        ) : (
          <p>Tu tarjeta esta vacia</p>
        )}
      </div>
    </div>
  );
}

export default App;

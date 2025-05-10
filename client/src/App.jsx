import React, { useState, useEffect } from "react"
import axios from "axios"
import "./App.css"

function App() {
  const [products, setProducts] = useState([])
  const [cart, setCart] = useState([])

  useEffect(() => {
    axios.get("http://localhost:5000/products").then(res => setProducts(res.data))
  }, [])

  const addToCart = (product) => {
    setCart([...cart, product])
    axios.post("http://localhost:5000/cart", { productId: product.id })
  }

  return (
    <div className="container">
      <h1 className="title">MASCOSHOP</h1>
      <div className="products">
        {products.map(product => (
          <div key={product.id} className="product">
            <img src={product.image} alt={product.name} className="product-img" />
            <h2>{product.name}</h2>
            <p>{product.description}</p>
            <span className="price">${product.price.toLocaleString()} COP</span>
            <button className="buy-btn" onClick={() => addToCart(product)}>Comprar</button>
          </div>
        ))}
      </div>
      <div className="cart">
        <h2>Carrito</h2>
        {cart.map((item, index) => (
          <div key={index} className="cart-item">
            <span>{item.name}</span>
            <span>${item.price.toLocaleString()} COP</span>
          </div>
        ))}
        <div className="total">
          Total: ${cart.reduce((acc, item) => acc + item.price, 0).toLocaleString()} COP
        </div>
      </div>
    </div>
  )
}

export default App

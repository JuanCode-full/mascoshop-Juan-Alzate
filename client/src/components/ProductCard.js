import React from "react";
import "./ProductCard.css";

function ProductCard({ product, addToCart }) {
  return (
    <div className="product-card">
      <img
        src={product.image}
        alt={product.name}
        className="product-image"
      />
      <div className="product-info">
        <h2 className="product-name">{product.name}</h2>
        <p className="product-price">{product.price}</p>
        <button
          className="buy-button buy-animation"
          onClick={() => addToCart(product)}
        >
          Add to Cart
        </button>
      </div>
    </div>
  );
}

export default ProductCard;

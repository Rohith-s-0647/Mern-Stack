import React, { useEffect, useState, useRef } from "react";
import "../Styling/Home.css";
import axios from "axios";
import add1 from "../images/add1.jpg";
import add2 from "../images/add2.jpg";
import electronics from "../images/tv.jpg";
import shorts from "../images/shorts.jpg";
import computer from "../images/computer.jpg";
import homeimg from "../images/kitchen.jpg";
import watch from "../images/watch.jpg";
import technology from "../images/technology.jpg";
import promoimg from "../images/promo.jpg";
const Home = () => {
  const [products, setProducts] = useState([]);
  const [consumer, setConsumer] = useState([]);
  const [clothing, setClothing] = useState([]);
  const [home, setHome] = useState([]);
  const [cart, setCart] = useState([]);
  const [iscart, setIsCart] = useState(false);
  const [searchname, setSearchName] = useState("");
  const elecref = useRef(null);
  const cloref = useRef(null);
  const homref = useRef(null);
  const shopref = useRef(null);
  const homenav = useRef(null);
  const dealsnav = useRef(null);

  useEffect(() => {
    Promise.all([
      axios.get("http://localhost:5000/product"),
      axios.get("http://localhost:5000/consumer"),
      axios.get("http://localhost:5000/clothing"),
      axios.get("http://localhost:5000/home"),
    ])
      .then(
        ([
          productresponse,
          consumerresponse,
          clothingresponse,
          homeresponse,
        ]) => {
          const productsdata = productresponse.data.map((p) => ({
            ...p,
            type: "products",
          }));
          const consumerdata = consumerresponse.data.map((c) => ({
            ...c,
            type: "consumer",
          }));
          const clothingdata = clothingresponse.data.map((c) => ({
            ...c,
            type: "clothing",
          }));
          const homedata = homeresponse.data.map((h) => ({
            ...h,
            type: "home",
          }));
          setHome(homedata);
          setClothing(clothingdata);
          setProducts(productsdata);
          setConsumer(consumerdata);
        }
      )
      .catch((err) => console.log("Error Occured", err));
  }, []);

  const Addtocart = (id, type) => {
    setIsCart(true);
    let item = null;
    if (type === "products") {
      item = products.find((p) => p.id === id);
    } else if (type === "consumer") {
      item = consumer.find((c) => c.id === id);
    } else if (type === "clothing") {
      item = clothing.find((c) => c.id === id);
    } else if (type === "home") {
      item = home.find((h) => h.id === id);
    }
    if (item) {
      setCart((prev) => {
        const existing = prev.find((p) => p.id === id && p.type === type);
        if (existing) {
          return prev.map((p) =>
            p.id === id && p.type === type
              ? { ...p, quantity: p.quantity + 1 }
              : p
          );
        } else {
          return [...prev, { ...item, quantity: 1 }];
        }
      });
    }
  };

  const increase = (id, type) => {
    setCart((prev) =>
      prev.map((p) =>
        p.id === id && p.type === type ? { ...p, quantity: p.quantity + 1 } : p
      )
    );
  };

  const decrease = (id, type) => {
    setCart((prev) =>
      prev.map((p) =>
        p.id === id && p.quantity > 1 && p.type === type
          ? { ...p, quantity: p.quantity - 1 }
          : p
      )
    );
  };

  const removed = (id, type) => {
    setCart((prev) => prev.filter((p) => p.id !== id || p.type !== type));
  };

  const allitems = [...products, ...clothing, ...consumer];
  const handlename = (e) => {
    setSearchName(e.target.value);
  };
  const filteredItems = allitems.filter((item) =>
    item.name.toLowerCase().includes(searchname.toLowerCase())
  );

  const elec = () => {
    elecref.current.scrollIntoView();
  };

  const clo = () => {
    cloref.current.scrollIntoView();
  };

  const hom = () => {
    homref.current.scrollIntoView();
  };

  const shopnow = (e) => {
    e.preventDefault();
    shopref.current.scrollIntoView();
  };

  const last = () => {
    alert("You your order has been placed\n\nThank You Visist Again");
  };

  const deals = (e) => {
    e.preventDefault();
    dealsnav.current.scrollIntoView();
  };

  const nav1 = (e) => {
    e.preventDefault();
    homenav.current.scrollIntoView();
  };
  return (
    <div>
      <div>
        <header className="home-header">
          <h1>
            Market<span>Kit</span>
          </h1>
          <div className="search-container">
            <input
              type="text"
              placeholder="search for items"
              onChange={handlename}
            />
            <button>Search</button>
          </div>
          <div className="links-container">
            <a href="" onClick={nav1}>
              Home
            </a>
            <a href="" onClick={shopnow}>
              Shop
            </a>
            <a href="" onClick={deals}>
              Deals
            </a>
          </div>
        </header>
      </div>
      <div className="promo-banner" ref={homenav}>
        <p className="version">VERSION 2025</p>
        <h1 className="discount">30% discount</h1>
        <p className="description">
          <b>New version 2025 with many powerful features.</b>
          <br />
          <b>Faster, Friction better & Better Price</b>
        </p>
        <button className="shop-btn" onClick={shopnow}>
          Shop Now
        </button>
      </div>
      {searchname && (
        <div className="search-results">
          <p className="section1">Search Results</p>
          <div className="products-container">
            {filteredItems.map((items) => {
              const {
                id,
                name,
                originalprice,
                discountprice,
                offer,
                image,
                type,
              } = items;
              return (
                <div key={id} className="product-card">
                  <img src={image} alt={name} className="product-image" />
                  <p className="product-name">{name}</p>
                  <p className="product-price">
                    ${discountprice}
                    <span className="original-price">${originalprice}</span>
                    <span className="discount">{offer}</span>
                  </p>
                  <button onClick={() => Addtocart(id, type)}>
                    <i className="fa-solid fa-cart-shopping"></i> Add to cart
                  </button>
                </div>
              );
            })}
          </div>
        </div>
      )}
      <div className="today-deals" ref={dealsnav}>
        <p className="deal-heading">Today's Deal</p>
        <div className="products-container">
          {products.map((item) => {
            const { id, name, originalprice, discountprice, offer, image } =
              item;
            return (
              <div key={id} className="product-card">
                <img src={image} alt={name} className="product-image" />
                <p className="product-name">{name}</p>
                <p className="product-price">
                  ${discountprice}
                  <span className="original-price">${originalprice}</span>
                  <br></br>
                  <span className="discount">{offer}</span>
                </p>
                <button onClick={() => Addtocart(id, "products")}>
                  <i className="fa-solid fa-cart-shopping"></i>Add to cart
                </button>
              </div>
            );
          })}
        </div>
      </div>

      {iscart && (
        <div className={`floating-cart ${cart.length === 0 ? 'empty-cart' : ''}`}>
          {cart.length === 0 ? (
            <h1>No items in the cart</h1>
          ) : (
            <>
              <table>
                <thead>
                  <tr>
                    <th>Name</th>
                    <th>Image</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Total</th>
                    <th>Action</th>
                  </tr>
                </thead>
                <tbody>
                  {cart.map(
                    ({ id, name, discountprice, quantity, image, type }) => (
                      <tr key={id}>
                        <td>{name}</td>
                        <td>
                          <img src={image} alt={name} />
                        </td>
                        <td>{discountprice}</td>
                        <td>
                          <button onClick={() => decrease(id, type)}>-</button>
                          {quantity}
                          <button onClick={() => increase(id, type)}>+</button>
                        </td>
                        <td>{discountprice * quantity}</td>
                        <td>
                          <button onClick={() => removed(id, type)}>
                            Remove
                          </button>
                        </td>
                      </tr>
                    )
                  )}
                  <tr>
                    <td
                      colSpan="4"
                      style={{ textAlign: "right", fontWeight: "bold" }}
                    >
                      Grand Total:
                    </td>
                    <td>
                      {cart.reduce(
                        (acc, item) => acc + item.discountprice * item.quantity,
                        0
                      )}
                    </td>
                  </tr>
                </tbody>
              </table>

              <div style={{ textAlign: "center", marginTop: "10px" }}>
                <button
                  style={{
                    backgroundColor: "#008CBA",
                    color: "white",
                    width: "100px",
                    height: "30px",
                  }}
                  onClick={last}
                >
                  Submit
                </button>
              </div>
            </>
          )}
        </div>
      )}

      <div className="our-site">
        <div className="site-feature">
          <i className="fa-solid fa-truck-fast"></i>
          <div>
            <h3>Free Delivery</h3>
            <p>For all orders over $99</p>
          </div>
        </div>
        <div className="site-feature">
          <i className="fa-solid fa-arrows-rotate"></i>
          <div>
            <h3>90 Days Return</h3>
            <p>If goods have problems</p>
          </div>
        </div>
        <div className="site-feature">
          <i className="fa-solid fa-money-bill"></i>
          <div>
            <h3>Secure Payment</h3>
            <p>100% secure payment</p>
          </div>
        </div>
        <div className="site-feature">
          <i className="fa-solid fa-headset"></i>
          <div>
            <h3>24/7 Support</h3>
            <p>Dedicated support</p>
          </div>
        </div>
        <div className="site-feature">
          <i className="fa-solid fa-gifts"></i>
          <div>
            <h3>Gift Service</h3>
            <p>Support gift service</p>
          </div>
        </div>
      </div>
      <div className="images">
        <img src={add1} alt="Promo Image" />
        <img src={add2} alt="Promo Image" />
      </div>
      <p className="header">Top Categories of this Month</p>
      <div className="category">
        <div onClick={elec}>
          <img src={electronics} />
          <p ref={elecref}>Electronics</p>
        </div>
        <div onClick={clo}>
          <img src={shorts} />
          <p ref={cloref}>Clothing</p>
        </div>
        <div onClick={elec}>
          <img src={computer} />
          <p ref={elecref}>Computers</p>
        </div>
        <div onClick={hom}>
          <img src={homeimg} />
          <p ref={homref}>Home & Kitchen</p>
        </div>
        <div>
          <img src={watch} />
          <p>Health & Beauty</p>
        </div>
        <div onClick={elec}>
          <img src={technology} />
          <p ref={elecref}>Technology Toys</p>
        </div>
      </div>
      <div className="consumer" ref={shopref}>
        <p className="section1">Consumer Electronics</p>
        <div className="products-container">
          {consumer.map((item) => {
            const { id, name, originalprice, discountprice, offer, image } =
              item;
            return (
              <div key={id} className="product-card">
                <img src={image} alt={name} className="product-image" />
                <p className="product-name">{name}</p>
                <p className="product-price">
                  ${discountprice}
                  <span className="original-price">${originalprice}</span>
                  <br></br>
                  <span className="discount">{offer}</span>
                </p>
                <button onClick={() => Addtocart(id, "consumer")}>
                  <i className="fa-solid fa-cart-shopping"></i>Add to cart
                </button>
              </div>
            );
          })}
        </div>
      </div>
      <div className="Apparels">
        <p className="section1">Apparels & Clothing</p>
        <div className="products-container">
          {clothing.map((item) => {
            const { id, name, originalprice, discountprice, offer, image } =
              item;
            return (
              <div key={id} className="product-card">
                <img src={image} alt={name} className="product-image" />
                <p className="product-name">{name}</p>
                <p className="product-price">
                  ${discountprice}
                  <span className="original-price">${originalprice}</span>
                  <br></br>
                  <span className="discount">{offer}</span>
                </p>
                <button onClick={() => Addtocart(id, "clothing")}>
                  <i className="fa-solid fa-cart-shopping"></i>Add to cart
                </button>
              </div>
            );
          })}
        </div>
      </div>
      <div className="Home">
        <p className="section1">Home,Kitchen & Garden</p>
        <div className="products-container">
          {home.map((item) => {
            const { id, name, originalprice, discountprice, offer, image } =
              item;
            return (
              <div key={id} className="product-card">
                <img src={image} alt={name} className="product-image" />
                <p className="product-name">{name}</p>
                <p className="product-price">
                  ${discountprice}
                  <span className="original-price">${originalprice}</span>
                  <br></br>
                  <span className="discount">{offer}</span>
                </p>
                <button onClick={() => Addtocart(id, "home")}>
                  <i className="fa-solid fa-cart-shopping"></i>Add to cart
                </button>
              </div>
            );
          })}
        </div>
      </div>
    </div>
  );
};

export default Home;

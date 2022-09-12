import React from "react";
import {BrowserRouter as Router, Routes, Route} from "react-router-dom"
import Navbar from "../navbar/Navbar";
import Home from "../home/Home";
import FormsDisplayed from "../form/FormsDisplayed";
import RestaurantDetails from "../details/RestaurantDetails";
import Restaurants from "../restaurants/Restaurants";


export default function App() {
    return(
           <Router>
            <div>
                <Navbar/>
            </div>

            <Routes>
                <Route exact path="/" element={<Home/>}></Route>
                <Route exact path="/restaurants" element={<Restaurants/>}></Route>
                <Route exact path="/restaurants/:restaurantId" element={<RestaurantDetails/>}></Route>
                <Route exact path="/reviewform" element={<FormsDisplayed/>}></Route>
            </Routes>

           </Router>
    )
}
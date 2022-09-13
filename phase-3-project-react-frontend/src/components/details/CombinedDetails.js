import React from "react";
import RestaurantDetails from "./RestaurantDetails";
import ReviewDetails from "./ReviewDetails";

export default function CombinedDetails() {

    return(
        <div className="container">
            <center>
                <div>
                    <RestaurantDetails/>
                </div>
                <p>REVIEWS</p>
                <div>
                    <ReviewDetails/>
                </div>
            </center>
        </div>
    )
}
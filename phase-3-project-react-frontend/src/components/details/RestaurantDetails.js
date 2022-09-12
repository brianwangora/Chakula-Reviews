import React, { useEffect, useState } from "react";
import { useParams } from "react-router-dom";

const RESTAURANT_INFO = "http://localhost:9292/restaurants/"

export default function RestaurantDetails() {
    const [name, setName] = useState("")
    const [location, setLocation] = useState("")
    const [restaurant_type, setRestaurant_type] = useState("")
    const [score, setScore] = useState("")
    const [comment, setComment] = useState("")

    let {restaurantId} = useParams()

    const restaurantInfo = RESTAURANT_INFO + restaurantId
    const reviewRetriever = "/review"
    const restaurantReview = restaurantInfo + reviewRetriever

    const restaurantFetcher = () => {
        fetch (restaurantInfo)
            .then((response) => response.json())
            .then((restaurant) => {
                setName(restaurant.name)
                setLocation(restaurant.location)
                setRestaurant_type(restaurant.restaurant_type)
            }),

        fetch (restaurantReview)
            .then((response) => response.json())
            .then((review) => {
                setScore(review.score)
                setComment(review.comment)
            })
    }

    // const reviewFetcher = () => {
    //     fetch (restaurantReview)
    //         .then((response) => response.json())
    //         .then((review) => {
    //             setScore(review.score)
    //             setComment(review.comment)
    //         })
    // }

    useEffect(
        restaurantFetcher, []
    )

    return(
        <div className="container">
            <h2>{name}</h2>
            <p>This restaurant is located in {location}</p>
            <p> This restaurant is classified as a {restaurant_type}</p>
            <p>The score given is {score}</p>
            <p>Reviewers had this to say about the restaurant: {comment}</p>
        </div>
    )
}
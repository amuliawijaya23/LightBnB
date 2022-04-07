SELECT reservations.id, properties.title, properties.cost_per_night, start_date, avg(property_reviews.rating) as average_rating
FROM reservations
JOIN properties on properties.id = reservations.property_id
JOIN property_reviews ON properties.id = property_reviews.property_id
WHERE reservations.guest_id = 4
GROUP BY reservations.id, properties.id
ORDER BY start_date
LIMIT 10;
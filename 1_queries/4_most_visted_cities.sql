SELECT p.city, count(r) as total_reservations
FROM properties p
JOIN reservations r ON p.id = r.property_id
GROUP BY p.city
ORDER BY total_reservations DESC;

-- Our product managers want a query to see a list of the most visited cities.
-- Get a list of the most visited cities.
-- Select the name of the city and the number of reservations for that city.
-- Order the results from highest number of reservations to lowest number of reservations.
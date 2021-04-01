SELECT r, p, avg(pr.rating) as average_rating
FROM properties p
JOIN reservations r ON p.id = r.property_id
JOIN property_reviews pr ON p.id = pr.property_id
JOIN users u ON r.guest_id = u.id
WHERE u.id = 1
AND end_date < now()::date
GROUP BY r.*, p.*, r.start_date
ORDER BY r.start_date
LIMIT 10;

-- When a user is logged in, they will have an option to view all of their reservations. This page will show details about a reservation and details about the property associated with the reservation.
-- Show all reservations for a user.
-- Select all columns from the reservations table, all columns from the properties table, and the average rating of the property.
-- The reservations will be for a single user, so use 1 for the user_id.
-- Order the results from the earliest start_date to the most recent start_date.
-- These will end up being filtered by either "Upcoming Reservations" or "Past Reservations", so only get reservations where the end_date is in the past.
-- Use now()::date to get today's date.
-- Limit the results to 10.
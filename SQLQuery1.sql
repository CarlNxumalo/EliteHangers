Select Booking.booking_id, Customer.name, Customer.surname, Hangar.name AS Hangar, Booking.date_start, Booking.date_end
from Booking
INNER JOIN Customer ON Booking.customer_id = Customer.customer_id
INNER JOIN Hangar ON Booking.hangar_id = Hangar.hangar_id
left join Checkin on Booking.booking_id = Checkin.booking_id
where (Customer.name like '%john%' OR Customer.surname like '%Nxu%' OR Customer.email like '%c%') AND Checkin.booking_id IS NULL
order by Booking.date_start 
;
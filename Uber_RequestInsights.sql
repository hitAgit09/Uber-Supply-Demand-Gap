DROP TABLE IF EXISTS uber_requests;

CREATE TABLE uber_requests (
    request_id TEXT,
    pickup_point TEXT,
    driver_id TEXT,
    status TEXT,
    request_timestamp TEXT,
    drop_timestamp TEXT,
    request_date TEXT,
    request_hour TEXT,
    unmet_demand TEXT
);



SELECT COUNT(*) FROM uber_requests;

--SQL INSIGHTS FROM THE UBER REQUESTS DATASET

/* insight 1:
   Total Requests by Pickup Point
*/
   SELECT pickup_point,
       COUNT(request_id) AS total_requests
   FROM uber_requests
   GROUP BY pickup_point;

/* insight 2:
   Unmet Demand by Pickup Point
*/
   SELECT pickup_point,
       SUM(unmet_demand::INT) AS total_unmet_demand
   FROM uber_requests
   GROUP BY pickup_point;

/* insight 3:
   Hourly Demand vs Unmet Demand
*/
  SELECT request_hour,
       COUNT(request_id) AS total_requests,
       SUM(unmet_demand::INT) AS unmet_requests
  FROM uber_requests
  GROUP BY request_hour
  ORDER BY request_hour;

/* insight 4:
   Unmet Demand Percentage by Hour
*/
   SELECT request_hour,
   ROUND(
           (SUM(unmet_demand::INT) * 100.0 / COUNT(request_id)), 2
       ) AS unmet_percentage
   FROM uber_requests
   GROUP BY request_hour
   ORDER BY request_hour;

/* insight 5:
   Ride Status Distribution
*/
   SELECT status,
       COUNT(*) AS total_count
   FROM uber_requests
   GROUP BY status;

/* insight 5:
   Peak Hour with Maximum Unmet Demand
*/
   SELECT request_hour,
       SUM(unmet_demand::INT) AS total_unmet_demand
   FROM uber_requests
   GROUP BY request_hour
   ORDER BY total_unmet_demand DESC
   LIMIT 1;



   





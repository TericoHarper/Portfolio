-- 1. Most common protocols
SELECT protocol, COUNT(*) AS count
FROM traffic_data
GROUP BY protocol
ORDER BY count DESC;

-- 2. Destinations that received the most packets
SELECT destination, COUNT(*) AS packet_count
FROM traffic_data
GROUP BY destination
ORDER BY packet_count DESC
LIMIT 3;

-- 3. Average packet size per protocol
SELECT protocol, ROUND(AVG(length), 4) AS avg_packet_size
FROM traffic_data
GROUP BY protocol
ORDER BY avg_packet_size DESC;

-- 4. When was traffic the heaviest (by second)
SELECT FLOOR(time) AS second, COUNT(*) AS total_packets
FROM traffic_data
GROUP BY second
ORDER BY total_packets DESC
LIMIT 3;

-- 5. Unusual traffic: find large packets (e.g. above 1500 bytes)
SELECT *
FROM traffic_data
WHERE length > 1500
ORDER BY length DESC;

-- 6. Protocol trends over time (by second)
SELECT protocol, FLOOR(time) AS second, COUNT(*) AS count
FROM traffic_data
GROUP BY protocol, second
ORDER BY second ASC;

-- 7. Biggest packets by protocol
SELECT protocol, MAX(length) AS biggest_packet
FROM traffic_data
GROUP BY protocol
ORDER BY biggest_packet DESC;

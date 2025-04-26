# Network Traffic Analysis Project

## 📌 Project Overview
Analyzed 1 hour of Wireshark network traffic (124,617 rows) using Excel and MySQL to extract insights on protocols, destinations, and packet sizes.

## 🧠 Questions Explored (with Results)
1. **What are the most common protocols?**  
   - TCP: 16,696 packets  
   - QUIC: 5,503 packets  
   - TLSv1.3: 4,149 packets  
   - UDP: 1,299 packets  

2. **Which destinations received the most packets?**  
   - `2607:fb90:7deb:18bf:51d3:8a5d:dc5c:2e21`: 14,207 packets  
   - `fe80::1aa5:ffff:fe1d:e23c`: 935 packets  
   - `2620:149:a41:280::4`: 926 packets  

3. **What’s the average packet size per protocol?**  
   - UDP: 171.6 bytes  
   - DNS: 131.5 bytes  
   - TCP: 439.4 bytes  
   - QUIC: 532.0 bytes  
   - TLSv1.3: 636.8 bytes  
   - Others: ARP (42), ICMPv6 (114.9), MDNS (255.9), TLSv1.2 (480), NTP (110), STUN (81.7)

4. **When was traffic the heaviest?**  
   - Peak second: **1431** with **844 packets**  
   - Other busy moments: Second 1813 (690), second 3197 (425)

5. **Any unusual traffic (large packets)?**  
   - Largest packets by protocol:  
     - TCP: 1514 bytes  
     - QUIC: 1461 bytes  
     - TLSv1.3 & TLSv1.2: 1450 bytes  
     - UDP: 1362 bytes  

6. **Protocol trends over time?**  
   - Example snapshot:  
     - Second 9: DNS (10), TCP (4), TLSv1.3 (3)  
     - Second 10: TCP (11), TLSv1.3 (9)  
     - Protocol activity fluctuated with seconds

7. **What were the biggest packets per protocol?**  
   - Already answered in Q5, showing highest per protocol

## 🛠 Tools Used
- Wireshark
- Excel
- MySQL Workbench
- SQL
- Excel Charts

## 💾 Dataset
Captured on home Wi-Fi using Wireshark and exported to CSV.

## 🔍 Key Findings
- TCP and QUIC dominated traffic flow.
- A few IPv6 addresses received the majority of packets.
- TLSv1.3 had the largest average packet size.
- Traffic peaked around second 1431 with over 800 packets.

## 📈 Visuals
Line and bar charts made in Excel to highlight traffic trends, protocol volumes, and packet sizes.

## 📚 Skills Gained
- Data cleaning
- SQL querying
- Pattern recognition
- Visual storytelling
- Interpreting real-world network behavior

## 🤝 Why I Chose This Project
A friend asked me, “What is all that traffic my Wi-Fi sends?”  
That one question sparked a full investigation. I captured my own traffic, analyzed it with SQL and Excel, and surfaced insights from over 124,000 packets. What started as a curiosity turned into a portfolio piece.
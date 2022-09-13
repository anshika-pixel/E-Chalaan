# PARKING E-Chalaan
Although Chandigarh Traffic Police is one of the strictest & efficient traffic police forces in India, still wrong parking in the city is a major worry. Some people often park their vehicles on the roadside or at places meant for other things causing problems to move traffic. The wrong parking often causes a lot of chaos to the oncoming traffic as well as to the pedestrians who might want to use the footpaths near which the vehicles are parked. 

Currently, the traffic wing of Chandigarh police issues a challan manually to all vehicles parked wrongly. The vehicle that has been wrongly parked needs to get towed away, due to this the traffic department can’t challan many vehicles as only one vehicle can be towed at a time with the help of a traffic police crane from a particular location. 

Keeping the time constraints in mind we decided to come up with a solution to help the Chandigarh police. E-challan is a method to automate the fine-giving policy on traffic defaulters, just like we have cameras that detect speed defaulters and send an automated message of a fine to the owner of the vehicle.

We plan to make an android application to simplify the process of imposing and collecting spot fines for wrong parking. Traffic cops and policemen will all have this app installed on their mobiles and whenever they see a vehicle wrongly parked can use it to record the owner as well as impose a fine on the owner. All the person in charge has to do is to open the app, scan the vehicle number which will be converted to text using machine learning algorithms and that will be used to search in the database containing all of the information about the vehicle along with its owner including information as such the phone number, address, etc. of the offender which will then be used to send a message on that person’s mobile regarding the fine he has to pay with the deadline.

This would make the process a lot simpler for the traffic department. Instead of looking for the owner every time to impose a fine, the traffic policeman has to scan the car’s license plate number. This will be used to send the message to the offender and keep a record of the repeated violators so that further strict actions can be taken against the offender.

We plan to use flutter and dart for the frontend development alongside MySQL as the database and Django for the backend. Also, the information about the account number where the fine has to be deposited will be given within the message. For other modes of payment also UPI-id or the number at which payment needs to be deposited can be accommodated in the message for future updates.

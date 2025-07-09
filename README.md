SETUP INSTRUCTIONS
1. Download and Install Business central version 26 - or your preferred version - Version used for this is BC 26
2. Set Up a new AL Project and configure the Launch.json ensure you have the correct runtime version as well as the Ports you have configured during installation.
3. Download symbols and you are ready to start the development 

SUMMARY
1. Extended the Sales Header Table and added 2 new fields ie Delivery methos & Delivery Isntructions - these fields only apply when the Document Type = Order
2. Added the new fields in the Shipping Fast Tab
3. Added an Event publisher to ensure that if Delivery Method is 'Courier' the Delivery istructions are included in the order
4. Updated/ Inserted the Delivery Instructions in a Delivery Instructions Log Table








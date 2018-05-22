_Course Project of CS 581: Database Management Systems_
=======================================================

### Instructor: [Prof. Ouri Wolfson](https://www.cs.uic.edu/k-teacher/ouri-wolfsonphd)


### About the Project
 - There are many advantages of having ridesharing service in place including monetary savings to the customers, increased revenue to the company and being eco-friendly with more number of customers opting for this service than to take a personal vehicle. 
 - However, the riders have rarely questioned about the quality of the rides that they have taken or they are about to take and neither did these companies have made a system available to the users which considers the preferences of their riders.
 - Through this project we are trying to address that lacking concept of giving importance to **rider's social preferences** by proposing a model which allows riders to specify their expectation and characteristics about fellow riders with whom he/she shares a ride. We believe this will enhance the user experience and will encourage them to choose ride sharing more often.
 - Under certain set of assumptions the algorithm implemented merges the individual trip requests into 4-Pax, 3-Pax, 2-Pax trips & finds the remaining unmerged trips while considering the rider's social preferences. Evaluation is done in terms of distance savings under these considerations. A real spatio-temporal data of around 1 million trip requests was collected & cleaned from NYC TLC's website & a simulated dataset of rider's preferences was considered.
 - Final report is made available for more details.


### Requirements
  - Python 3.4/3.5
  - Jupyter Notebook
  - MySQL Workbench 6.3
  - MySQL connector for python
  - GraphHopper Directions API
  - NetworkX python library
  - JSON wrapper for python
  - Numpy python package
  - CSV package for python
  - New York City Map (in .pbf format) [[click here to get](https://www.dropbox.com/s/ukqkcix1fq02lbf/new-york.osm.pbf)]
  
  ### pip Installations
  - **python.exe should be added to system path**
  - Numpy Command: **python -m pip install numpy**
  - NetworkX Command: **python -m pip install networkx==1.10**
  - JSON Command: **python -m pip install json**
  - CSV Command: **python -m pip install csv**
  
### GraphHopper Directions API Installation & Steps to Setup
  - Unzip **graphhopper-web-0.6.0-bin.zip** file provided into the folder where python scripts will be executed 
  - Download & paste the **new-york-latest.osm.pbf** file in the same folder
  - Open command line in this folder
  - Run the following command: **java -jar graphhopper-web-0.6.0-with-dep.jar jetty.resourcebase=webapp config=config-example.properties osmreader.osm=new-york.osm.pbf**
  - It may take a couple of minutes to set up the server
  - You can view the server at "http://localhost:8989"
  
### MySQL Connector Installation
  - Download the **mysql-connector-python-2.1.7-py3.4-windows-x86-64bit.exe** file provided
  - Install it by following the steps in the installation window
  
### DB Schema Creation & Data Import Steps
  - Open the schema_creation file provided in mysql wokbench
  - Run to script to create the database and the tables within
  - Use the MySQL import command wizard to import csv files into the tables with same column names or import data by using **dataset_dump.sql** file which can be found at - https://www.dropbox.com/s/adrustbxphuism2/dataset_dump.sql
  
### Exceution steps for both the notebooks
  - Set the start_date, start_time and end_time
  - Start the GraphHopper API by running the command as mentioned above
  - Uncomment the commented cell and run this cell only once for the respective time windows
  - Default values for DB connection - Username: root, Password: root, Port: 3306
  - Update the Username, Password and Port for DB connection throughout the notebook file, if needed
  - Run all the cells and obtain results
  
**An output.csv file would be generated with Total Sum of Initial Individual Distances, Total Distance in Rideshare Model, Total Sum of Initial Individual Cost, Total Cost in Rideshare Model, Single Passenger Trips, Two Passenger Trips, Three Passenger Trips and Four Passenger Trips**

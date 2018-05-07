# RideSharing_CS581
 - There are many advantages of having ridesharing service in place including monetary savings to the customers, increased revenue to the company and being eco-friendly with more number of customers opting for this service than to take a personal vehicle. 
 - However, the riders have rarely questioned about the quality of the rides that they have taken or they are about to take and neither did these companies have made a system available to the users which considers the preferences of their riders.<br>
 - Through this project we are trying to address that lacking concept of giving importance to **rider's social preferences** by proposing a model which allows riders to specify their expectation and characteristics about fellow riders with whom he/she shares a ride. We believe this will enhance the user experience and will encourage them to choose ride sharing more often.


## Requirements
  - Python 3.4/3.5
  - Jupyter Notebook
  - MySQL Workbench 6.3
  - MySQL connector for python
  - GraphHopper API
  - NetworkX
  - JSON wrapper for python
  - Numpy python package
  - CSV package for python
  - New york map in .pbf format
  
  
### GraphHopper API Installation and setup
  - Unzip the GraphHopper API file provided into the folder where are to run the scripts. 
  - Paste the new-york-latest.osm.pbf file in the same folder
  - Open command line in this folder
  - run the Following command: **java -jar graphhopper-web-0.6.0-with-dep.jar jetty.resourcebase=webapp config=config-example.properties osmreader.osm=new-york.osm.pbf**
  - It would take a couple of minutes to set up the server.
  - You can view the server at "Localhost:8989"
  
### Mysql Connector installation
  - Download the mysql-connector.exe file provided
  - Install it following the steps in the installation window
  **note: requires python.exe path is added to system paths**
  
### Pip Installations
  - **python.exe should be added to system path**
  - Numpy Command: **python -m pip install numpy**
  - NetworkX Command: **python -m pip install networkx==1.10**
  - JSON Command: **python -m pip install json**
  - CSV Command: **python -m pip install csv**
  
### Database schema creation and import data into the database
  - Open the schema_creation file provided in mysql wokbench
  - Run to script to create the database and the tables within.
  - Use the MySQL import command wizard to import the respective csv files into the tables with same names.
  
### Exceution steps for both the notebooks
  - Set the start_date, start_time and end_time
  - Start the GraphHopper API by running the command as mentioned above
  - Uncomment the commented cell and run this cell only once for the respective time windows
  - Default values for db connection: Username: root, Pass: root, port: 3306
  - If diffrent, Update the user name, password and port numbers for db connection throughout the file.
  - Run all the cells
  - Results are printed for each pool window
  
**An output.csv file would be generated with total Individual distance, Shared distance, Individual Cost, Shared Cost, Single trips, Two sharing, Three Sharing and Four Sharing trips**

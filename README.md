# RideSharing_581
## Requirements
  - Python 3.4/3.5
  - Jupyter Notebook
  - MySQL Workbench 6.3
  - MySQl connector for python
  - GraphHopper API
  - NetworkX
  - Json wrapper for python
  - numpy python package
  - csv package for python
  - new york map in .pbf format
  
  
### GraphHopper API Installation and setup
  - Unizip the GraphHopper API file provided into the folder where are to run the scripts. 
  - Paste the new-york-latest.osm.pbf file in the same folder
  - Open command line in this folder
  - run the Following command: **java -jar graphhopper-web-0.6.0-with-dep.jar jetty.resourcebase=webapp config=config-example.properties osmreader.osm=new-york.osm.pbf**
  - It would take a couple of minutes to set up the server.
  - You can view the server at "Localhost:8989"
  
### Pip Installations
  - Numpy Command: **python -m pip install numpy**
  - NetworkX Command: **python -m pip install networkx==1.10**
  - Json Command: **python -m pip install json**
  - CSV Command: **python -m pip install csv**
  
### Database schema creation and import data into the database
  - open the schema_creation file provided in mysql wokbench
  - run to script to create the database and the tables within.
  - Use the MySQL import command wizard to import the respective csv files into the tables with same names.
  
### Exceution steps for both the notebooks
  - Set the start_date, start_time and end_time
  - Start the GraphHopper API by running the command as mentioned above
  - Uncomment the commented cell and run this cell only once for the respective time windows
  - default values for db connection: Username: root, Pass: root, port: 3306
  - If diffrent, Update the user name, password and port numbers for db connection throughout the file.
  - Run all the cells
  - Results are printed for each pool window
  
**An output.csv file would be generated with total Individual distance, Shared distance, Individual Cost, Shared Cost, Single trips, Two sharing, Three Sharing and Four Sharing trips**

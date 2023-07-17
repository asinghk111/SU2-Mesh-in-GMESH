Steps: 

1. Download the airfoil data from "http://airfoiltools.com/search/index"

2. Save it as NACA2412.txt

3. Make sure the NACA2412.txt has correct format. First three rows should not have any data and 
   one line space after points on top surface are defined

3. Change the file name in "scipt_to_generate_geo_file.py" sciprt

4. Run the script and it will save "GEO" file as airfoil.

5. Open the NACA2412_GEO file and edit it according to you need. Basically you need to change the extra points, lines, surface tags in order to run the script.

6. Open the NACA2412_GEO file in gmesh to create the structured mesh
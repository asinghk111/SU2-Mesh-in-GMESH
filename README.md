# Tutorials of creating C type mesh for airfoil in GMESH 

Steps: 

1. Download the airfoil data from "http://airfoiltools.com/search/index"

2. Save it as NACA2412.txt

3. Make sure the NACA2412.txt has correct format. First three rows should not have any data and 
   one line space after points on top surface are defined

3. Change the file name in "scipt_to_generate_geo_file.py" sciprt

4. Run the script and it will save "GEO" file as airfoil.

5. Open the NACA2412_GEO file and edit it according to you need. Basically you need to change the extra points, lines, surface tags in order to run the script.

6. Open the NACA2412_GEO file in gmesh to create the structured mesh

Notes: One might notice the error during running the SU2 code: NPOIN are more than the listed in SU2 file. The solution to this error in to create surface anr volume and import the mesh . SU2 format. This will remove extra points in defining the airfoil during spline.

Disclaimer: This tutorial is based on https://www.youtube.com/watch?v=bekRbU7rtZE&ab_channel=ComputationalDomain with some modifications.

1. Put modis.pet in the model folder. This is the PET file
2. Put basins.bas in the model folder to replace the old one. IPET is set as 4 and the petfile is set as modis.pet
3. Put file.cio in the model folder to replace the old one. NBYR is set as 1
4. Run the SWAT.exe in the folder. This slightly changed SWAT model would read PET from modis.pet for each subbasin. A fort.123456 file would be generated to validate this process. It has the hru id and the PET value, which is same as the modis value.
5. To run multiple year, add more data to modis.pet. Note that the format is Year+JulianDay+PET (f6.3)

Please let me know any problems.
Zhiqiang
 
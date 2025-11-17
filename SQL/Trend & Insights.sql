-- Highlight which alternative fuels (biodiesel, ethanol, hydrogen) have meaningful presence vs. niche usage

WITH Total_SUM AS (	
    SELECT 
		SUM(EV + PHEV + HEV + Biodiesel + Ethanol_Flex + CNG + Propane + 
		Hydrogen + Methanol + Gasoline + Diesel + "Unknown Fuel") AS Total_Vehicles,
		SUM(Biodiesel) AS Total_Biodisel,
		SUM(Ethanol_Flex) AS Total_Ethanol_Flex,
		SUM(Hydrogen) AS Total_Hydrogen
	FROM
		vehicle_data_clean
)

SELECT 
	 Total_Vehicles,
	 Total_Biodisel,
     ROUND((Total_Biodisel * 100 / Total_Vehicles) , 3) AS Biodisel_pct,
     Total_Ethanol_Flex,
     ROUND((Total_Ethanol_Flex * 100 / Total_Vehicles) , 3) AS Ethanol_Flexl_pct,
     Total_Hydrogen,
     ROUND((Total_Hydrogen * 100 / Total_Vehicles) , 3) AS Hydrogen_pct
FROM
	Total_SUM;


    

	





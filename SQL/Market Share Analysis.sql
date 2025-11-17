-- Calculate the percentage of EVs, PHEVs, HEVs, and Gasoline vehicles for each state.

WITH Total_for_States AS (
	SELECT 
		State,
        EV,
        PHEV,
        HEV,
        Gasoline,
		(EV + PHEV + HEV + Biodiesel + Ethanol_Flex + CNG + Propane + 
        Hydrogen + Methanol + Gasoline + Diesel + "Unknown Fuel") AS Total_Vehicles
	FROM
		vehicle_data_clean
)

SELECT 
	State,
	Total_Vehicles,
    ROUND(EV * 100/ Total_Vehicles, 2) AS EV_pct, -- EV share 
    ROUND(PHEV * 100/ Total_Vehicles, 2) AS PHEV_pct, -- PHEV share
    ROUND(HEV * 100/ Total_Vehicles, 2) AS HEV_pct, -- HEV share
    ROUND(Gasoline * 100/ Total_Vehicles, 2) AS Gasoline_pct -- Gasoline share
FROM
	Total_for_States;
    
-- Identify the top 5 states with the highest EV adoption rate (EVs as a % of all registered vehicles).

SELECT
	state,
    ROUND(EV * 100.0 / (EV + PHEV + HEV + Biodiesel + Ethanol_Flex + CNG + Propane + 
	Hydrogen + Methanol + Gasoline + Diesel + "Unknown Fuel"), 3) AS EV_Adoption_Rate_pct,
    (EV + PHEV + HEV + Biodiesel + Ethanol_Flex + CNG + Propane + 
	Hydrogen + Methanol + Gasoline + Diesel + "Unknown Fuel") AS Total_Vehicles
FROM
	vehicle_data_clean
ORDER BY 
	EV_Adoption_Rate_pct DESC
LIMIT 5;

-- Compare EV adoption in California vs. other large states (e.g., Texas, Florida, New York).

SELECT
	state,
    ROUND(EV * 100.0 / (EV + PHEV + HEV + Biodiesel + Ethanol_Flex + CNG + Propane + 
	Hydrogen + Methanol + Gasoline + Diesel + "Unknown Fuel"), 3) AS EV_Adoption_Rate_pct,
    (EV + PHEV + HEV + Biodiesel + Ethanol_Flex + CNG + Propane + 
	Hydrogen + Methanol + Gasoline + Diesel + "Unknown Fuel") AS Total_Vehicles
FROM
	vehicle_data_clean
WHERE
	state IN ('California', 'Texas', 'Florida', 'New York')
ORDER BY 
	EV_Adoption_Rate_pct DESC;
    

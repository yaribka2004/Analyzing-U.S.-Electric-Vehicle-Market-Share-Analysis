# 🚗 U.S. Electric Vehicle Market Share Analysis ⚡


## 📘 Project Overview
This project utilizes data provided by the Transportation Research Group to gain an understanding of the current state of electric vehicle (EV) adoption and distribution across the United States. I analyzed vehicle registration data from 51 states using MySQL and visualized the key findings.  
Let's figure it out!

## 🎯 Objectives
- What percentage of vehicles in each state are EVs, PHEVs, HEVs, and gasoline?
- Which states have the highest EV adoption rates, and which states lag behind?
- Which alternative fuels (biodiesel, ethanol, hydrogen) are significant vs. niche?
- Where should policymakers prioritize EV infrastructure investment based on adoption trends and gaps in support?

## 🧠 Skills Demonstrated
- Standardization: Modified the names of columns with fuel names to a clear, readable form
- Common Table Expressions (CTEs): Effective application of WITH clauses (Total_for_States, Total_SUM) to structure multi-step calculations, enhance query readability, and define metrics before final selection
- Filtering and Ranking: Advanced use of ORDER BY combined with LIMIT to identify top performers (e.g., Top 5 states) and effective application of the WHERE IN clause for targeted comparative analysis (California vs. other large states)
- Analytical Aggregation & Metric Development: Calculated complex Market Share Metrics (e.g., EV_Adoption_Rate_pct) by performing arithmetic operations on aggregates and deriving the Total Vehicle Fleet from multiple columns
- Visualization: Demonstrated capability in utilizing Tableau Public to transform analytical results into clear, actionable visual reports (Geographic Maps, Bar Charts)

## 🔍 Key Analyses  
### 1) Market Share Analysis
  #### - Calculate the percentage of EVs, PHEVs, HEVs, and Gasoline vehicles for each state.  
   Summary of Key Findings:  
   * Gasoline Dominance: Across all U.S. states, gasoline vehicles maintain overwhelming market share, with an average of 84.4% of gasoline vehicles in the state. This confirms the vast potential for electrification across the country.
   * Hybrid (HEV) as the Main Alternative: Hybrid Electric Vehicles (HEVs) currently represent the largest segment of electrified transport, with an average of 2.38% of hybrid vehicles in the state. This suggests that consumers are more comfortable with non-plug-in electrification than with pure EV or PHEV technology.
   * EV Adoption Leaders: California (3.41%), District of Columbia (2.60%), and Hawaii (2.38%) lead the nation in EV market penetration.
  #### - Identify the top 5 states with the highest EV adoption rate (EVs as a % of all registered vehicles).
  <img width="2178" height="1352" alt="TOP 5 States With The Highest EV Adoption Rate" src="https://github.com/user-attachments/assets/5a2e4139-0af7-44ab-8b19-091ad2a67223" />  
  
   * The top 5 included:  
    - California with 3.41%    
    - District of Columbia (2.6%)  
    - Hawaii (2.38%)  
    - Washington (2.25%)  
    - Nevada (1.87%)

 #### - Compare EV adoption in California vs. other large states (e.g., Texas, Florida, New York).
   * Dominant Leader (California): At 3.41% adoption, California is nearly 2.5 to 4 times more saturated than its large counterparts.
   * The Adoption Gap: States with massive overall vehicle populations, like Texas (0.89%), New York (1.16%) and Florida (1.37%), show the lowest penetration rates. Despite having a high absolute number of EVs, their percentage is low.
<img width="2327" height="1311" alt="EV Adoption Rate USA Map" src="https://github.com/user-attachments/assets/10e6be5a-91f5-4cd0-97de-5419f690c1ef" />

<img width="2539" height="1139" alt="TOP 15 States by Total Number of EVs" src="https://github.com/user-attachments/assets/3d2b15a0-c5cd-40e3-9509-b84bc0e7d419" />


### 2) Trend & Insights
  #### - Highlight which alternative fuels (biodiesel, ethanol, hydrogen) have meaningful presence vs. niche usage.
  Summary of Key Findings:
  * Ethanol/Flex (E85): Ethanol-capable vehicles hold a substantial market share, making it the dominant alternative fuel. This indicates widespread availability and acceptance, likely driven by established agricultural and fuel supply chains.
  * Biodiesel: While Biodiesel's share is under the 1% threshold, its absolute volume is significant. This usage is highly concentrated within specific commercial and heavy-duty sectors (e.g., trucking and logistics) rather than in the general consumer market.
  * Hydrogen: Hydrogen vehicles have an extremely low penetration rate. This technology is highly dependent on limited infrastructure and regional subsidies, indicating it is still in the experimental phase and has not yet achieved critical mass.
  #### - Summarize key insights: Which states are leading? Which lag behind? What does this imply for infrastructure planning?
  * California (3.41%) shows high EV market saturation, which shows that we need to focus on densification & reliability. Invest in high-capacity DC Fast Charging Hubs and upgrade existing networks to manage high demand and prevent congestion.
  * High-volume markets such as Texas (about 0.89%) and Florida (about 1.37%) have the lowest penetration relative to their size, which suggests that we should focus on corridor coverage. Prioritize closing major gaps on interstate highways to overcome concerns about driving range and unlock the enormous potential of these large markets.

### 3) Recommendations
  #### - Based on your analysis, suggest 3 states where EV infrastructure investment should be prioritized.
  #### - Justify your recommendation with data (e.g., high EV adoption but low supporting fuel infrastructure).
  1. 🥇 California (Sustain and Densify): Holds the highest EV adoption rate (3.41%). Investment is critical not for generating new demand, but for managing network capacity and preventing congestion in an already saturated market.
  2. Texas (Expand and Connect):  Represents the largest market potential due to its massive vehicle fleet, but the EV adoption rate (0.90%) is the lowest among major states. Investments are required to close the penetration gap and overcome consumer reservations about long-distance travel. Prioritize DCFC corridor coverage on interstate highways to alleviate range anxiety and enable the adoption of electric light-duty trucks and SUVs common in the region.
  3. New York (allow transition): Demonstrates moderate adoption (about 1.17%) and high population density. The investment will focus on meeting the needs of a large number of PHEV and apartment building owners who lack home charging. The focus is on Level 2 charging infrastructure in densely populated urban and suburban areas to support transitional technology and conventional charging in public spaces.
  
## 💭 Conclusion
  This analysis confirms that gasoline still dominates the U.S. automotive market (about 84.4%), but there is a clear regional stratification in the field of electrification. Market leaders: states such as California (3.41%) have reached maturity and now require investments to ensure network reliability and densification. Growth opportunities: The states with the largest volume of investments, especially Texas (0.90%), have the largest gap in penetration, making them the most important sites for growth-oriented infrastructure. Alternative fuels: Ethanol is established (7.09%), The allocation of public funds for infrastructure is best focused solely on charging for electric vehicles to accelerate the transition.The main recommendation is for three-pronged strategic investments focused on network densification (CA), corridor expansion (TX), and transition support (NY) to meet various regional needs and accelerate the adoption of electric vehicles at the national level.
   

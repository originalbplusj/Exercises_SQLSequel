SELECT plant_name
FROM plant
INNER JOIN
        (SELECT seeds.plant_id FROM seeds INNER JOIN garden_bed ON seeds.plant_id=garden_bed.plant_id) AS planted_plants ON plant.plant_id=planted_plants.plant_id;
        
        
SELECT *
FROM seeds
LEFT JOIN garden_bed ON (seeds.plant_id = garden_bed.plant_id)
UNION ALL
SELECT *
FROM seeds 
RIGHT JOIN garden_bed ON (seeds.plant_id = garden_bed.plant_id);
# JD's Slower Trains
Small Factorio mod to reduce the speed of trains to semi-realistic levels.

## Fuel Bonuses
Fuel acceleration bonuses are reduced, and top speed bonuses are removed, to keep train speeds reasonable.

| Fuel Type | Acceleration Bonus | Top Speed Bonus |
| :--- | :---: | :---: |
| Coal | 0% | 0% |
| Solid Fuel | 10% | 0% |
| Rocket Fuel | 20% | 0% |
| Nuclear Fuel | 50% | 0% |

## Rolling Stock
All rolling stock has reduced top speed, reduced rolling friction, and increased weight. This has the effect of overall slowing trains down, while increasing braking distance and giving a more realistic look to their movement.

Individual pieces of rolling stock have different top speeds, meaning different trains will move faster or slower. A train's top speed is equal to the lowest top speed of its rolling stock.

| Rolling Stock | Maximum Speed | Weight | Rolling Friction |
| :--- | :---: | :---: | :---: |
| Locomotive | 125 mph / 201 km/h | 2,000 -> 6,000 | 0.5 -> 0.1 |
| Cargo Wagon | 100 mph / 161 km/h | 1,000 -> 3,000 | 0.5 -> 0.1 |
| Fluid Wagon | 100 mph / 161 km/h | 1,000 -> 3,000 | 0.5 -> 0.1 |
| Artillery Wagon | 80 mph / 129 km/h | 4,000 -> 12,000 | 0.5 -> 0.1 |

### Mini Trains
Supporting the [Mini Trains](https://mods.factorio.com/mod/Mini_Trains) mod, I've reduced their speed even more to balance their reduced size.

| Rolling Stock Type | Maximum Speed | Weight | Rolling Friction |
| :--- | :---: | :---: | :---: |
| Mini Locomotive | 40 mph / 64 km/h | 1,000 -> 2,000 | 0.5 -> 0.1 |
| Mini Cargo Wagon | 60 mph / 97 km/h | 500 -> 2,000 | 0.5 -> 0.1 |
| Mini Fluid Wagon | 60 mph / 97 km/h | 500 -> 2,000 | 0.5 -> 0.1 |

Note that the mini wagons' weights have increased to 2/3 that of the regular wagons, rather than half. I have increased the cargo capacity of the Mini Cargo Wagon to 24 slots to keep things relatively balanced.

I have also changed the mini wagons' `joint_distance` and `connection_distance` fields to 2 and 3 respectively, from 3 and 2. This maintains the 1-tile gap between wagons, but allows a mini wagon-led train to stop at stations in the right place. If you already have any mini wagons in your save, you will need to remove and replace them for the changes to apply correctly.

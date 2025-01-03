# Space Simulator
A space simulator test in Godot. Basically Kerbal Space Program but more tech showcase than game. Will make until get bored.

## How it works
### Displaying everything
Planets and sun is scaled 1 million times (so Earth has radius of 6,371 meters). Moves of spaceship will also be scaled 1 million times.
At this scale distance between Earth and Sun is slightly less than 150 km. Maximum far cull distance of camera is 20 km, so normal 3D object of Sun cannot be drawn from Earth orbit. To display it a disk with the same visible radius, but at distance of 5 m instead of 150 km is displayed. Radius of the disk is calculated by calculating angular size of Sun with distance to camera and Sun radius, and later this angular size is converted to real size at the distance of 5 meters.

It is possible that displaying everything in the same manner as this disk (so changing size instead of position) will be better, but I will experiment later.


## Things done and to do
- [ ] Astronomical objects (generated via shaders)
  - [ ] Graphics
    - [x] Basic colors and texture parameters
    - [ ] Atmosphere (clouds)
    - [ ] Different terrain types for earth-like planets
    - [ ] Different planet types (gas, rocky, sand)
    - [ ] Non-flat terrain
  - [ ] Objects
    - [x] Star
    - [x] Planet
    - [ ] Moon for planet
    - [ ] Second planet
- [x] Correct astronomical distances
- [ ] Spaceship
  - [ ] Interior
    - [ ] Model
    - [ ] Textures
  - [ ] Onboard instruments
    - [ ] Speedometer
    - [ ] Navball
    - [ ] Attitude meter
- [ ] Controls
  - [ ] Camera
  - [ ] Spaceship controls
  - [ ] Time controls
- [ ] Physics
  - [ ] Position updates
  - [ ] Gravity
  - [ ] Correct planet rotations
  - [ ] Correct planet orbits
  - [ ] Destroy spaceship in atmosphere (temporary solution until surface will be implemented)
- [ ] Navigation
  - [ ] Some "map view"
  - [ ] Navball indicators for maneuvers
### Further goals
- [ ] Planet surfaces
- [ ] Atmospheric physics (burning in atmoshpere, flying)
- [ ] Landing
- [ ] Space station
- [ ] Docking
  

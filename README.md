# 3D mapping Rover simulation

Welcome to the 3D Mapping Robotic Rover project! This open-source initiative aims to build a versatile robotic rover capable of autonomously mapping areas in 3D. Designed for hobbyists and robotics enthusiasts, our rover offers an engaging platform for exploration, learning, and development.

## Project Overview

The 3D Mapping Robotic Rover is designed to traverse various terrains, capturing high-resolution 3D maps of its environment. It operates in both autonomous and manual modes, providing flexibility and control to users. In its autonomous exploratory mode, the rover intelligently navigates and maps unknown areas, while in manual mode, users can directly control its movements.

### Objectives

- Develop a robotic rover that can map an area in 3D for hobbyist use.
- The rover should support both autonomous and manual control modes.
- It should be capable of traversing various terrains and operate for an extended period.
- It should be modular. We should be able to install any external module who respect the rover API

## Features

No features released for now

## Roadmap

- **[Gazebo Simulation](https://github.com/remi-boivin/slam-gazebo-simulation/issues):** Use Gazebo for testing our design and algoritms in various scenarios.
- **[Dual Operating Modes](https://github.com/remi-boivin/slam-gazebo-simulation/issues):** Autonomous for exploratory and path-finding tasks, and Manual for direct control.
- **[Advanced 3D Mapping](https://github.com/remi-boivin/slam-gazebo-simulation/issues):** Utilizes stereo cameras or LIDAR technology for precise 3D mapping.
- **[Obstacle Detection and Avoidance](https://github.com/remi-boivin/slam-gazebo-simulation/issues):** Employs real-time processing to navigate around obstacles.
- **[WiFi Communication](https://github.com/remi-boivin/slam-gazebo-simulation/issues):** Enables live data transmission and remote control capabilities.

## Getting Started

To get started with the 3D Mapping Robotic Rover project, you'll need some basic tools and knowledge in robotics, programming and simulation. Here's how to dive in:

1. **Clone the Repository:**
```bash
git clone https://github.com/yourproject/3d-mapping-robotic-rover.git
```
2. **Install Required Software:**
- **[Gazebo](https://gazebosim.org/docs/harmonic/install)**: brings a fresh approach to simulation with a complete toolbox of development libraries and cloud services to make simulation easy
- **[ROS](http://wiki.ros.org/noetic/Installation/)**: provides libraries and tools to help software developers create robot applications.
OR:
- **[Docker](https://docs.docker.com/get-docker/)**: helps developers build, share, run, and verify applications anywhere — without tedious environment configuration or management.
- **[Docker Compose](https://docs.docker.com/compose/install/)**: is a tool for defining and running multi-container applications. It is the key to unlocking a streamlined and efficient development and deployment experience.
Explore and Contribute: Start experimenting with the rover's capabilities, and consider contributing to the project!

**NOTE:** Need to choose between install ``Gazebo`` and ``ROS`` on your computer or use ``Docker``/``Docker Compose``. The result will be the same.

1. **Launch Gazebo or Docker compose**: (Depending which solution you've choose)
```bash
docker-compose up --build
```

2. Start experimenting with the rover's capabilities, and consider contributing to the project!

## Contributing

We welcome contributions from the community! Whether you're interested in adding new features, improving documentation, or fixing bugs, there's always room for your help. Please refer to our [CONTRIBUTING.md](CONTRIBUTING.md) file for guidelines on how to make a contribution and the [dev-guidelines](dev-guidelines.md) to see our dev coding rules.

## Documentation

For detailed information about the project, including setup guides, hardware specifications, and development documentation, please visit our docs directory.

## License

This project is licensed under the ``GPL-3`` License - see the [LICENSE](LICENSE.md) file for details.

## Acknowledgments

Thanks to all the contributors who have helped shape this project.
Special thanks to the open-source community for providing the tools and libraries that make projects like this possible.

Join us in developing a versatile 3D mapping robotic rover that pushes the boundaries of autonomous exploration and mapping!
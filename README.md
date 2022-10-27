# Robot Synthetic Base Image

This image builds on [ppodgorsek's](https://github.com/ppodgorsek/docker-robot-framework) work building the robot framework for docker. The only enhancements this image intends to add is the ability to run the tests on a cron job.

This is meant to be used with something like the `httpd` image to expose the reports (see [docker-compose](docker-compose.yml) file for an example).

# Known Issues

- The image runs as root to handle installing cronie and running the cron jobs, so it no longer respects `ROBOT_UID` or `ROBOT_GUID`.
- The image looks for an output log at a hard set location (`/opt/robotframework/temp/out.txt`), so it won't respect `ROBOT_WORK_DIR`
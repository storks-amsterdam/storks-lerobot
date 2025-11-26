lerobot-find-port

lerobot-setup-motors \
    --robot.type=wheels \
    --robot.port=/dev/ttyACM0

lerobot-calibrate \
    --robot.type=wheels \
    --robot.port=/dev/ttyACM0 \
    --robot.id=wheels_6wd_01 # unique name
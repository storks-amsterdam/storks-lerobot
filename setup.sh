python3 -m venv .venv
sudo apt-get install cmake build-essential python3-dev pkg-config libavformat-dev libavcodec-dev libavdevice-dev libavutil-dev libswscale-dev libswresample-dev libavfilter-dev

pip install -e ".[feetech]"
wandb login

python -m lerobot.find_port

python -m lerobot.setup_motors \
    --robot.type=so101_follower \
    --robot.port=/dev/ttyACM0  # port from `lerobot.find_port`

python -m lerobot.setup_motors \
    --teleop.type=so101_leader \
    --teleop.port=/dev/ttyACM0

python -m lerobot.calibrate \
    --robot.type=so101_follower \
    --robot.port=/dev/ttyACM0 \
    --robot.id=so_101_red_01 # unique name


# for gui
sudo apt update
sudo apt install gedit x11-apps



# for joystick

dmesg | grep -i usb


sudo apt update
sudo apt install usbutils

sudo apt install linux-tools-virtual hwdata


sudo modprobe evdev
sudo modprobe uinput
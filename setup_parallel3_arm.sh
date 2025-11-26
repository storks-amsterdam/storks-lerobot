python3 -m venv .venv
sudo apt-get install cmake build-essential python3-dev pkg-config libavformat-dev libavcodec-dev libavdevice-dev libavutil-dev libswscale-dev libswresample-dev libavfilter-dev

pip install -e ".[feetech]"
wandb login

lerobot-find-port

lerobot-setup-motors \
    --robot.type=parallel3 \
    --robot.port=/dev/ttyACM0


lerobot-calibrate \
    --robot.type=parallel3 \
    --robot.port=/dev/ttyACM0 \
    --robot.id=parallel3_blue # unique name


lerobot-teleoperate \
    --robot.type=parallel3 \
    --robot.port=/dev/ttyACM0 \
    --robot.id=parallel3_blue \
    --teleop.type=parallel3_kb \
    --display_data=true

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
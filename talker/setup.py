import os
import subprocess

from distutils.core import setup

setup(version="0.0.1")

cwd = os.path.dirname(__file__)

# subprocess.run(["pip3", "install", "-r", "requirements.txt"], capture_output=True)

# subprocess.run(["sudo", "cp", "rules/*", "/etc/udev/rules.d/"], capture_output=True)
# subprocess.run(["sudo", "udevadm", "control", "--reload"], capture_output=True)
# subprocess.run(["sudo", "udevadm", "trigger"], capture_output=True)

#!/sbin/busybox sh

echo "do sensors job"
chown root:input /sys/devices/virtual/input/input*/*enable*
chown root:input /sys/devices/virtual/input/input*/*delay*


echo "do lsm9ds0 job"
#acc
chown system:system /sys/bus/i2c/devices/1-001d/accelerometer/enable_device
chown system:system /sys/bus/i2c/devices/1-001d/accelerometer/pollrate_ms
chown system:system /sys/bus/i2c/devices/1-001d/accelerometer/full_scale

#mag
chown system:system /sys/bus/i2c/devices/1-001d/magnetometer/enable_device
chown system:system /sys/bus/i2c/devices/1-001d/magnetometer/pollrate_ms
chown system:system /sys/bus/i2c/devices/1-001d/magnetometer/full_scale

#gyro
chown system:system /sys/bus/i2c/devices/1-006a/enable_device
chown system:system /sys/bus/i2c/devices/1-006a/enable_polling
chown system:system /sys/bus/i2c/devices/1-006a/pollrate_ms
chown system:system /sys/bus/i2c/devices/1-006a/range
chown system:system /sys/bus/i2c/devices/1-006a/fifo_samples
chown system:system /sys/bus/i2c/devices/1-006a/fifo_mode
chown system:system /sys/bus/i2c/devices/1-006a/reg_addr
chown system:system /sys/bus/i2c/devices/1-006a/reg_value


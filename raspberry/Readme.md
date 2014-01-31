# Jenkins Raspberry Emulator

## Beispiel Job im Jenkins

```
#!jenkins_docker_run simonswine/jenkins-raspberry

# ssh COMMAND
rssh="ssh root@127.0.0.1 -p 2201"

# Run Qemu with raspi emulation
qemu-system-arm -vnc :1 -kernel /usr/local/share/raspberry_devel.kernel -cpu arm1176 -m 256 -M versatilepb -no-reboot -append "root=/dev/sda2 panic=1 rootfstype=ext4 rw" -hda /usr/local/share/raspberry_devel.qcow2 -net nic -net user,hostfwd=tcp::2201-:22,smb=/jenkins 2> /dev/null  &

qemu_pid=$!

# Wait for running vm
echo "Wait for running vm"
sleep 10

count=0
while true; do

    # Try to connect
	${rssh} uname -a 2> /dev/null

	# Break if succeed
	[ $? -eq 0 ] && break

	# wait for it
	sleep 1

	# increment
	count=`expr $count + 1`
	echo "try to reach emulator #${count}"	

	# break out
	[ $? -gt 100 ] && echo "Could not reach vm" && exit 1

done

# Shutdown emulator
echo "Shutting down vm"
${rssh} reboot

# Get qemu pid


# wait for it
echo "Wait for shutdown"
wait $qemu_pid
```


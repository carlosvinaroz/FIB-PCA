import subprocess
import time
import sys
import re

if __name__ == "__main__" :

	program = input("Write the name of your program: ")
	base_command = ["/usr/bin/time","-o" , "output.txt" ,"-a" , "./" + program]
	times_execute = input("Write the times of your program need to be execute: ")
	arguments = input("Insert here your aguments of the program: ")
	original_program = input("Insert your original program por compare: ")
	base_command_o = ["/usr/bin/time","-o" , "output_o.txt" ,"-a" , "./" + original_program]
	arguments = arguments.split()
	if len(arguments) != 0 :
		base_command.extend(arguments)
		base_command_o.extend(arguments)
	
	for i in range(0 , int(times_execute)):
		subprocess.call(base_command , shell=False)

	with open("output.txt" , 'r') as output_file:
		file = output_file.read()
		list_of_file = file.split()
		output_file.close()
	

	cpu_sum  = 0
	time_sum = 0
	count = 0
	cpu_min = 1000
	time_min_user = 1000
	time_min_system = 1000
	cpu_max = 0
	time_max_user = 0
	time_max_system = 0
	


	for i in list_of_file:
		
		if i.find("user") != -1 :
			val = float(i[0:4])
			time_sum += val
			if val < time_min_user :
				time_min_user = val
			
			if val > time_max_user:
				time_max_user = val
			count += 1


		elif i.find("system") != -1 :
			val = float(i[0:4])
			time_sum += val
			if val < time_min_system :
				time_min_system = val
			
			if val > time_max_system:
				time_max_system = val

		elif i.find("CPU") != -1 :
			if i[0] != '?':
				if i[3] == '0':
					val = float(i[0:3])
				else :
					val = float(i[0:2])
				cpu_sum += val
				if val < cpu_min :
					cpu_min = val
				
				if val > cpu_max:
					cpu_max = val

	cpu_sum_o  = 0
	time_sum_o = 0
	count_o = 0
	cpu_min_o = 1000
	time_min_user_o = 1000
	time_min_system_o = 1000
	cpu_max_o = 0
	time_max_user_o = 0
	time_max_system_o = 0

	for i in range(0 , int(times_execute)):
		subprocess.call(base_command_o , shell=False)

	with open("output_o.txt" , 'r') as output_file:
		file = output_file.read()
		list_of_file = file.split()


	for i in list_of_file:
		
		if i.find("user") != -1 :
			val = float(i[0:4])
			time_sum_o += val
			if val < time_min_user_o :
				time_min_user_o = val
			
			if val > time_max_user_o:
				time_max_user_o = val
			count_o += 1


		elif i.find("system") != -1 :
			val = float(i[0:4])
			time_sum_o += val
			if val < time_min_system_o :
				time_min_system_o = val
			
			if val > time_max_system_o:
				time_max_system_o = val

		elif i.find("CPU") != -1 :
			if i[0] != '?':
				if i[3] == '0':
					val = float(i[0:3])
				else :
					val = float(i[0:2])
				cpu_sum_o += val
				if val < cpu_min_o :
					cpu_min_o = val
				
				if val > cpu_max_o:
					cpu_max_o = val
			

print("The minimum of user time was :" + str(time_min_user))
print("The max of user time was :" + str(time_max_user))
print("The average of time was : " + str(time_sum / count))
print("The minimum of system time was :" + str(time_min_system))
print("The max of user time was :" + str(time_max_system))
print("The minimum of cpu was : " + str(cpu_min))
print("The max of cpu was : " + str(cpu_max))
print("Average of cpu was : " + str(cpu_sum / count))
print("--------------------------------------------------")
print("Stadistics for original program")
print("The minimum of user time was :" + str(time_min_user_o))
print("The max of user time was :" + str(time_max_user_o))
print("The average of time was : " + str(time_sum_o / count_o))
print("The minimum of system time was :" + str(time_min_system_o))
print("The max of user time was :" + str(time_max_system_o))
print("The minimum of cpu was : " + str(cpu_min_o))
print("The max of cpu was : " + str(cpu_max_o))
print("Average of cpu was : " + str(cpu_sum_o / count_o))
print("--------------------------------------------------")
print(str(time_sum_o) + " " + str(time_sum) + " " + str(cpu_sum_o) + " " + str(cpu_sum))
print("Speed up :")
print("Speed up for time : "  + str(time_sum_o/time_sum))
print("Speed up for cpu : " + str(cpu_sum_o / cpu_sum))






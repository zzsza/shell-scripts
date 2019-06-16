import os
import numpy as np

def search(dirname, extension='.sh'):
	filenames = os.listdir(dirname)
	result_lists = []
	for filename in filenames:
		ext = os.path.splitext(filename)[-1]
		if ext == extension:
			result_lists.append(filename)
	return result_lists


current_folder = os.getcwd()
script_folder = current_folder + '/scripts/'
script_lists = search(script_folder)

print("문제를 풀어보세요 : ", np.random.choice(script_lists, 1))

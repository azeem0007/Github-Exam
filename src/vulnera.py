# vulnerable.py
import os

def read_file(filename):
    # Unsafe: taking input directly from user and opening a file
    with open(filename, 'r') as f:
        data = f.read()
    return data

def run_command(user_input):
    # Unsafe: command injection risk
    os.system(user_input)

if __name__ == "__main__":
    file_name = input("Enter filename: ")
    print(read_file(file_name))

    command = input("Enter command to run: ")
    run_command(command)

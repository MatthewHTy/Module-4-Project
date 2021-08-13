log_file = open("um-server-01.txt")
#log_file basically keeps track of the python file/ open the file. open() basically connects a file and allows the user to edit information.

def sales_reports(log_file):
    #def is a keyword used to call a function, in this case sale_reports with a parameter saying log_file.
    for line in log_file:
    #the for in this line is iterating over a sequence, for example a list, string, set, etc. It's basically running a loop through the log_file.
        # line = line.rstrip()
        # rstrip basically removes any trailing characters in a line.
        if line.startswith("Mon"):
            print(line)
        # day = line[0:3]
        #This is basically a range used to display data from 0-3
        # if day == "Tue":
        #This is saying if the day is tues, print the line/order
            # print(line)
        #printing the statement above

sales_reports(log_file)
#This is just running the function, like a console.log from javascript. so it can run in the terminal.

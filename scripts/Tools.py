print("Please enter the file name you would like to modify")
inputFile = input()
def fileNameDOStoUnix(dosFileName):
    newFileName = ""
    for i in range(3 , len(dosFileName) - 1, 1):
        if dosFileName[i]=='\\':
            newFileName = newFileName + '/'
        else:
            newFileName = newFileName + dosFileName[i]
    return "\"\\\"/mnt/c" + newFileName + "\\\"\""
print (fileNameDOStoUnix(inputFile))

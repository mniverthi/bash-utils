mv */* .
find . -type d -empty -delete
for f in ./*.cpp;
do
	mv "$f" "${f%?????????}".cpp
done

for f in ./*cpp;
do
	# awk -F[-] '{print $0 " " $1 " " $2}' <<< "$f"
	awk -F[-] '{print "mkdir "$1";"
				"mv "$0 " "$1";"
				"cd ./"$1";"
				"mv " $0 $2";"
				"cd ..;"}' <<< "$f" | sh
done

for f in */*;
do
	awk -F[/-] '{print "mv " $0 " " $1"/"$3}' <<< "$f" | sh
done

mv ../STL.txt ./
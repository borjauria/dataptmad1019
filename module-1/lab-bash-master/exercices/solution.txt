#I create the file solution.txt
touch solution.txt

#Print Hello World in console
echo Hello World

#I create a new folder called new_dir
mkdir new_dir

#I delete the new_dir directory
rm -r new_dir

#I copy the sed.txt file that is in the lorem folder in the lorem-copy folder
cp /Users/borjauria/IRONHACK/dataptmad1019/module-1/lab-bash-master/
lorem/sed.txt /Users/borjauria/IRONHACK/dataptmad1019/module-1/lab-bash-master/lorem-copy/

#I copy all the files inside lorem into lorem-copy
cp *.txt /Users/borjauria/IRONHACK/dataptmad1019/module-1/lab-bash-master/lorem-copy

#I go to the lorem directory and show the content of sed.txt
cd lorem
cat sed.text

#Locate at lorem folder and show at.txt and lorem.txt content
cat at.txt lorem.txt

#I go to the lorem-copy directory and show the first three lines of the file sed.txt
head -n3 sed.txt

#I go to the lorem-copy directory and show the last three lines of the sed.txt file.
tail -n3 sed.txt

#I add "Homo homini lupus" at the end of the file sed.txt but not works correctly in a OS X.
sed -i '$Homo homini lupus'

#Now I show the last three lines of the file sed.txt
taul -3 sed.txt

#I change the word et by ET in the file at.txt
sed 's/et/ET/' at.txt

#I search for active users in the system
id -un

#I find out where I am on the route within the system
pwd

#Now I list all *.txt files in lorem directory.
find *.txt

#Now I'm going to count the number of rows of sed.txt
wc -l sed.txt

#I count the number of files which name starts with lorem
ls $lorem | wc -l

#I found every appearence of "et" in "at.txt" located in lorem (I try grep -lr "et" *,
#but it is very dangerous, lol)
grep -r -F "et" /Users/borjauria/IRONHACK/dataptmad1019/module-1/lab-bash-master/lorem/at.txt


#I found every appearence of string "et" in at.txt located at lorem
borjauria$ grep -nrw '/Users/borjauria/IRONHACK/dataptmad1019/module-1/
lab-bash-master/lorem' -e "et"

#I found every appearance of the string et at the lab directory.
grep -r 'et' /Users/borjauria/IRONHACK/dataptmad1019/module-1/lab-bash-master

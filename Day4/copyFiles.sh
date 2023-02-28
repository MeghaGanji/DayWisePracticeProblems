for files in *.log
do
        folderName1=`echo $files | awk -F. '{print $1}'`;
        folderName2=`date | awk '{print $3 "-" $2 "-" $6}'`;
        ext=`echo $files | awk -F. '{print $NF}'`;
        folderName=$folderName1"_"$folderName2"."$ext;
        echo $files;
        echo $folderName;
        printf "\n";
        if [ -d $folderName ]
        then
                rm -r $folderName;
        fi
        mkdir $folderName;
        cp $files $folderName/$files;
done

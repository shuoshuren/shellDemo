#!/bin/bash
# case 写lamp菜单

PS3="select you will exec menu:"

select i in "apache" "mysql" "php"

do

case $i in
        apache )
                echo "install apache"
        ;;
        mysql )
                echo "install mysql"
        ;;
        php )
            echo "install php"
        ;;

        * )
        echo "use $0 apache|mysql|php|help"
        ;;
esac

done

#!/bin/bash
# case 写lamp菜单

case $1 in
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


echo "Please talk to me ..."
while :
do 
    read INPUT_STRING
    case $INPUT_STRING in
        hello)
            echo "hello yourself!"
            ;;
        bye)
            echo "see you again!"
            break
            ;;
        *)
            echo "Sorry, I don't understand"
            ;;
    esac
done
echo "That's all folks!"
for i in {1..10}; do
        for j in {1..10}; do
                echo "172.22.0.3:$j"
                python3 client.py --mech k_rr --cate_num 16 --width 100 --epsilon $i --port $j --address 172.22.0.3 --sensitive_value $(($RANDOM % 16 ))
                pgrep python | xargs kill
                sleep 5
        done
done


full_path=$(readlink -f $@)/
for i in $(ls $full_path); do
    tp=$full_path$i
    if [[ $(echo $tp | grep torrent) != '' ]]; then
        ./lutorrent.py $tp
    fi
done

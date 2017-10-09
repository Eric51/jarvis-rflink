jv_pg_rflink_lg() {
    case "$1" in
        no_device_matching) echo "Aucun appareil ne correspond à $2";;
        switching_on) echo "J'allume $2";;
        switching_off) echo "J'éteins $2";;
        switching_done) echo "c'est fait";;
    *) jv_error "Erreur: Aie, je ne reconnais pas '$2'";;
    esac
}
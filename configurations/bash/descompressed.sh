function descomprimir {
    case "$1" in
	*.tgz)
	    tar -xvzf "$1" 
	    ;;
        *.tar)
            tar xvf "$1"
            ;;
        *tar.gz)
             tar xzvf "$1"
             ;;
         *.gz)
             gzip -d "$1"
             ;;
         *.bz2)
             bzip2 -d "$1"
             ;;
         *tar.bz2)
             tar jvxf "$1"
             ;;
         *.zip)
             unzip "$1"
             ;;
         *.lha)
             lha -x "$1"
             ;;
         *.zoo)
             zoo -x "$1"
             ;;
         *.rar)
             unrar -x "$1"
             ;;
         *)
             echo "$1 es inválido, por ejemplo, use archivo.tar.gz, siempre
             incluya la extensión "
             
             exit
             ;;
             
     esac
 }
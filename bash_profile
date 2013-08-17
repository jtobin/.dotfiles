eval $(keychain --eval id_rsa)

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi



github ssh key
```shell
ssh-keygen -t ed25519 -C "[EMAIL_ADDRESS]"

eval "$(ssh-agent -s)"

ssh-add ~/.ssh/id_ed25519

cat ~/.ssh/id_ed25519.pub
```

git config
```shell
git config --global user.name "[YOUR_NAME]" 
git config --global user.email "[EMAIL_ADDRESS]"
```
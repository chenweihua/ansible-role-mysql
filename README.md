# ansible_install_mysql
install mysql with ansible role

# 使用
替换files目录下面的文件MySQL的源码文件，并修改vars/main.yml下面的mysql_package_name为你的MySQL包名

ansible-playbook -i mysql.inventory mysql_install.yml

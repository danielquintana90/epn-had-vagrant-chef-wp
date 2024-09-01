# Permisos a usuario Vagrant en carpeta wordpress
execute 'Install Spanish on Wordpress' do
  command 'sudo -u vagrant -i -- chown -R vagrant:www-data /opt/wordpress/wp-content && sudo chmod -R 775 /opt/wordpress/wp-content'  
end

# Instalar Español
execute 'Install Spanish on Wordpress' do
  command 'sudo -u vagrant -i -- wp language core install es_ES --path=/opt/wordpress/'  
end

# Activar idioma Español
execute 'Activate Spanish on Wordpress' do
  command 'sudo -u vagrant -i -- wp language core activate es_ES --path=/opt/wordpress/'  
end
#!/bin/bash
# This script creates directories for the Engineers working on multiple projects.
# Please run this as root user or run with sudo prefix

# Declare dictionary for list of engineers
project_engineer=('calvin' 'martins' 'yinka' 'cj' 'iyanu' 'stanley')

# Create directories for different engineer projects
for engineer in ${project_engineer[@]}; do
  sudo mkdir -p /var/www/html/${engineer}_web
done

# Declare dictionary with key:value pairs where key=project and value=engineer working on the project
declare -A project_template=(
  ["Digital team"]='calvin'
  ["Gymso fitness"]='martins'
  ["Neuron"]='yinka'
  ["Tween agency"]='cj'
  ["Solution"]='iyanu'
  ["Ziggy"]='stanley'
)

# Declare dictionary for project url zipfiles we will need to download
declare -A project_template_url=(
  ["https://www.tooplate.com/zip-templates/2075_digital_team.zip"]="calvin"
  ["https://www.tooplate.com/zip-templates/2119_gymso_fitness.zip"]="martins"
  ["https://www.tooplate.com/zip-templates/2085_neuron.zip"]="yinka"
  ["https://www.tooplate.com/zip-templates/2128_tween_agency.zip"]="cj"
  ["https://www.tooplate.com/zip-templates/2081_solution.zip"]="iyanu"
  ["https://www.tooplate.com/zip-templates/2091_ziggy.zip"]="stanley"
)

# Create index.html files in all engineer project directories with the description of the project each engineer will be working on
#for i in "${!project_template[@]}"; do
#  echo "<h2>Hello there, here is the "${i}" template we are working on</h2>" > /var/www/html/${project_template[${i}]}_web/index.html
#done

# Download the templates into a directory in /tmp/<engineer_name>_tmp and unzip the contents into same directory
# This will create a directory with the name of the zip file with the contents in it. eg. /tmp/calvin_tmp/2075_digital_team
for i in "${!project_template_url[@]}"; do
  wget -q "${i}" --directory-prefix=/tmp/${project_template_url[${i}]}_tmp
  unzip -q /tmp/${project_template_url[${i}]}_tmp/* -d /tmp/${project_template_url[${i}]}_tmp
done
echo "Project templates downloaded and unzipped"

# Copy the contents of newly extracted files that will not be in a directory to /var/www/html<engineer>_web which is the engineer project directory
for val in ${project_template[@]}; do
  sudo cp -r /tmp/"$val"_tmp/*/.* /var/www/html/"$val"_web
done

# Remove zip file copied to engineer project directory /var/www/html/<engineer>_web
for engineer in ${project_engineer[@]}; do
  sudo rm -rf /var/www/html/${engineer}_web/*.zip
done

# Cleanup files and directories that are no longer needed
echo "Deleting files and directories no longer needed"
for dir in ${project_template[@]}; do
  rm -rf /tmp/"$dir"_tmp
done
echo "All temporary directories deleted"


# List out URL's of all webapps deployed
echo "To confirm that your applications are successfully deployed please go to the following URLs"
echo "Getting public IP address of current server..."
#public_ip=$(curl -s api.ipify.org)
public_ip=$(dig +short myip.opendns.com @resolver1.opendns.com)
echo

for project in "${!project_template[@]}"; do
  echo "To access the "${project}" webapp, please visit http://$public_ip/"${project_template[${project}]}"_web "
done

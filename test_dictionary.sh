# Declare dictionary with key:value pairs where key=project and value=engineer working on the project
declare -A project_template=(
  ['Digital team']='calvin'
  ['Gymso fitness']='martins'
  ['Neuron']='yinka'
  ['Tween agency']='cj'
  ['Solution']='iyanu'
  ['Ziggy']='stanley'
)

for i in ${project_template[@]}; do
  echo "The values in this dictionary are "$i"."
done

echo #################################################

for i in ${!project_template[@]}; do
  echo "$i"
done


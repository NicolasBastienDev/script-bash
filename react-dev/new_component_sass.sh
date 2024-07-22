if [ "$#" -ne 1 ]; then
	echo "Usage: $0 <dir_name>"
	exit 1
fi

if [[ ! $1 =~ ^[A-Z] ]]; then
    echo "First letter of a component file must be a capital letter"
    exit 1
fi

dir_name=$1

mkdir -p "$dir_name"

touch "${dir_name}/${dir_name}.jsx"
touch "${dir_name}/${dir_name}.module.scss"

echo "
function ${dir_name} () {
    return (
        <h3>${dir_name}</h3>
    )
}

export default ${dir_name}
" > "${dir_name}/${dir_name}.jsx"

echo "Component '$dir_name' has been created"

if [ "$python_use_pipinstall" = true ]; then
 pip install -r requirements.txt
fi

$python_alias $python_file_name 

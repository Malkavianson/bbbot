echo "Processo de instalacao."
call npm install -f
call npm update -f
python -m pip install --upgrade pip
call pip install -r requirements.txt --force --no-cache-dir

pause

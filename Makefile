run_in_container:
	podman build -f Containerfile -t javascript_calculator .
	podman run --rm -p 8000:8000 localhost/javascript_calculator
	
run_localy:
	pip3 install -r requirements.txt
	cd django_backend; python3 manage.py migrate; python3 manage.py test; python3 manage.py runserver
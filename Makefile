run:
	podman build -f Containerfile -t javascript_calculator .
	podman run --rm -p 8000:8000 localhost/javascript_calculator
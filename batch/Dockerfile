FROM python:3.8

# set working directory
WORKDIR /app

# copy python script into the container
COPY app/square.py /app

ENV PYTHONBUFFERED=1


# run python script when the container starts
CMD ["python", "-u","square.py", "3"]
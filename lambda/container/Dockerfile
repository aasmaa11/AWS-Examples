FROM public.ecr.aws/lambda/python:3.21

COPY function/function.py function/requirements.txt /var/task

RUN python3.12 -m pip install -r /var/task/requirements.txt

CMD ["function.handler"]
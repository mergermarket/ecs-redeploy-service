FROM python:3.9.1-alpine
ADD requirements.txt /requirements.txt
RUN pip install -r /requirements.txt
ADD redeploy.py /redeploy.py
ENTRYPOINT ["python", "-u", "/redeploy.py"]

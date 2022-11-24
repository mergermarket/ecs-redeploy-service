FROM python:3.11-alpine
ADD requirements.txt /requirements.txt
RUN pip install -r /requirements.txt
ADD redeploy.py /redeploy.py
ENTRYPOINT ["python", "-u", "/redeploy.py"]

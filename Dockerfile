FROM python:slim
RUN apt-get update && \
    apt-get install git -y && \
    apt-get clean
RUN git clone https://github.com/qq1305091744/onlinetools.git /onlinetools
WORKDIR /onlinetools
RUN pip install -r requirements.txt && \
    rm -fr ~/.cache/pip
EXPOSE 8000
CMD ["python","/onlinetools/main.py"]

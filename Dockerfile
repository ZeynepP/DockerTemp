
#FROM tensorflow/tensorflow:1.15.0rc2-gpu-py3
FROM tensorflow/tensorflow:2.3.2-gpu



ENV PYTHONPATH=.

# Set working directory
WORKDIR /usr/src/app

# Copy application source
ADD ./requirements.txt requirements.txt
RUN cat /etc/resolv.conf

# Install requirements
RUN pip  install -r requirements.txt


# Copy application source
COPY . /usr/src/app

EXPOSE 8000

ENTRYPOINT ["python"]
CMD [ "./dockertemp.py", "/usr/src/temp/config.json" ]


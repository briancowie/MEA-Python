# Use Python 3.6 or later as a base image
FROM python:latest
# Copy contents into image
COPY . .
# Install pip dependencies from requirements
RUN pip3 install -r requirements.txt
# Set YOUR_NAME environment variable??
# ENV YOUR_NAME=brian
# Expose the correct port
EXPOSE 5000
# Create an entrypoint
ENTRYPOINT ["python3", "lbg.py"]

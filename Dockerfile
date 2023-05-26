# Use Python 3.6 or later as a base image
FROM python:3.6
# Copy contents into image
COPY . .
# Install pip dependencies from requirements
RUN pip3 install -r requirements.txt --break-sytem-packages
# Set YOUR_NAME environment variable
ENV YOUR_NAME=brian
# Expose the correct port??
# Create an entrypoint
ENTRYPOINT ["python3", "app.py"]

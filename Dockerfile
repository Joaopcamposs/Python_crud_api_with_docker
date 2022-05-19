# pull official base image
FROM python:3.10

# set work directory
WORKDIR /app

# copy requirements file
COPY requirements.txt requirements.txt

# install dependencies
RUN pip install -r requirements.txt

# copy project
COPY . /app

# expose the 8000 port from the localhost system
EXPOSE 8000

# run app
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

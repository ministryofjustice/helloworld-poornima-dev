apiVersion: apps/v1
kind: Deployment
metadata:
  name: helloworld-rubyapp
spec:
  replicas: 1
  selector:
    matchLabels:
      app: helloworld-rubyapp
  template:
    metadata:
      labels:
        app: helloworld-rubyapp
    spec:
      containers:
      - name: rubyapp
        image: ${ECR_URL}:${IMAGE_TAG}
        ports:
        - containerPort: 4567
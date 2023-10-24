mongo:
	docker run -d -p 27017:27017 --rm --name mongodb --network notes-net -v mongo-data:/data/db mongo
backend:
	docker run -d -p 5000:5000 --rm --name notes-backend --network notes-net notes-backend
frontend:
	docker run -d -p 3000:3000 --rm --name notes-frontend notes-frontend


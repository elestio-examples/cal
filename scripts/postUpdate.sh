#set env vars
set -o allexport; source .env; set +o allexport;

docker-compose exec -e DATABASE_DIRECT_URL=$DATABASE_DIRECT_URL calcom yarn workspace @calcom/prisma db-deploy
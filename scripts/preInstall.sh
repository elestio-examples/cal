#set env vars
set -o allexport; source .env; set +o allexport;

NEXTAUTH_SECRET=$(openssl rand -base64 32)
CALENDSO_ENCRYPTION_KEY=$(openssl rand -base64 24)

cat << EOT >> ./.env

NEXTAUTH_SECRET=${NEXTAUTH_SECRET}
CALENDSO_ENCRYPTION_KEY=${CALENDSO_ENCRYPTION_KEY}
EOT

cat <<EOT > ./servers.json
{
    "Servers": {
        "1": {
            "Name": "local",
            "Group": "Servers",
            "Host": "172.17.0.1",
            "Port": 5432,
            "MaintenanceDB": "postgres",
            "SSLMode": "prefer",
            "Username": "postgres",
            "PassFile": "/pgpass"
        }
    }
}
EOT
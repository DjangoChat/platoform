#!/bin/bash
# This script runs stripe-cli listen, captures the webhook secret, and updates STRIPE_WEBHOOK_SECRET in .env.development

ENV_FILE="$(dirname "$0")/.env.development"

# Run stripe-cli listen and capture the webhook secret
echo "Starting stripe-cli listen..."
SECRET_LINE=$(stripe listen 2>&1 | grep -m1 'Your webhook signing secret is')

if [[ $SECRET_LINE =~ whsec_[a-zA-Z0-9]+ ]]; then
    SECRET=${BASH_REMATCH[0]}
    echo "Found webhook secret: $SECRET"
    # Update or add STRIPE_WEBHOOK_SECRET in the env file
    if grep -q '^STRIPE_WEBHOOK_SECRET=' "$ENV_FILE"; then
        sed -i "s/^STRIPE_WEBHOOK_SECRET=.*/STRIPE_WEBHOOK_SECRET=$SECRET/" "$ENV_FILE"
    else
        echo -e "\nSTRIPE_WEBHOOK_SECRET=$SECRET" >> "$ENV_FILE"
    fi
    echo "Updated $ENV_FILE with new webhook secret."
else
    echo "Could not find webhook secret in stripe-cli output."
    exit 1
fi

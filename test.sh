HEADER="Metadata:true"
URL="http://169.254.169.254/metadata"
API_VERSION="2021-12-13" #https://learn.microsoft.com/en-us/azure/virtual-machines/instance-metadata-service?tabs=linux#supported-api-versions

echo "Instance details"
curl -s -f -H "$HEADER" "$URL/instance?api-version=$API_VERSION"

echo "Load Balancer details"
curl -s -f -H "$HEADER" "$URL/loadbalancer?api-version=$API_VERSION"

echo "Management Token"
curl -s -f -H "$HEADER" "$URL/identity/oauth2/token?api-version=$API_VERSION&resource=https://management.azure.com/"

echo "Graph token"
curl -s -f -H "$HEADER" "$URL/identity/oauth2/token?api-version=$API_VERSION&resource=https://graph.microsoft.com/"

echo "Vault token"
curl -s -f -H "$HEADER" "$URL/identity/oauth2/token?api-version=$API_VERSION&resource=https://vault.azure.net/"

echo "Storage token"
curl -s -f -H "$HEADER" "$URL/identity/oauth2/token?api-version=$API_VERSION&resource=https://storage.azure.com/"
# Check for those env vars to know if you are in an Azure app
echo $IDENTITY_HEADER
echo $IDENTITY_ENDPOINT

# You should also be able to find the folder:
ls /opt/microsoft
#and the file
ls /opt/microsoft/msodbcsql17

# Get management token
curl "$IDENTITY_ENDPOINT?resource=https://management.azure.com/&api-version=2017-09-01" -H secret:$IDENTITY_HEADER
# Get graph token
curl "$IDENTITY_ENDPOINT?resource=https://graph.azure.com/&api-version=2017-09-01" -H secret:$IDENTITY_HEADER

# API
# Get Subscriptions
URL="https://management.azure.com/subscriptions?api-version=2020-01-01"
curl -H "Authorization: $TOKEN" "$URL"
# Get current permission on resources in the subscription
URL="https://management.azure.com/subscriptions/<subscription-uid>/resources?api-version=2020-10-01'"
curl -H "Authorization: $TOKEN" "$URL"
# Get permissions in a VM
URL="https://management.azure.com/subscriptions/<subscription-uid>/resourceGroups/Engineering/providers/Microsoft.Compute/virtualMachines/<VM-name>/providers/Microsoft.Authorization/permissions?api-version=2015-07-01"
curl -H "Authorization: $TOKEN" "$URL"

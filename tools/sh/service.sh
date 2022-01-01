. ../cfg/environment

export SERVICE_NAME

APP_CONFIG_FILE='../cfg/'$SERVICE_NAME'.yaml''

PROCESS_LIST=$(jps | grep $SERVICE_NAME'.jar' | cut -d' ' -f1)
PROCESS_COUNT=$(jps | grep $SERVICE_NAME'.jar' | wc -l)
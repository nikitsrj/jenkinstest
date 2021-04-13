payload_content=`curl -s http://localhost:3000/students | jq .`
if [ "$payload_content" = "[]" ]; then
    echo "There is no Content in Payload"
    exit 1
else
    echo "There are valid content in payload triggering the job"
    echo "Application Decision"
    Application=`cat /home/nikit/Downloads/AppDeployment_NonRecurring_29-03-2021.txt | jq -r .parameter[3].value`
    if [ "$Application" = "MIRAI" ]; then
        json_content=`cat /home/nikit/Downloads/AppDeployment_NonRecurring_29-03-2021.txt | jq 'del(.parameter[3])'`
        curl -X POST http://root:11e9806aed1366dfd2173ecb709cced6ec@localhost:8080/job/api-test-ds/build --data-urlencode json="$json_content"
    else 
        echo "Application Name is wrong"
    fi
    exit 0
fi

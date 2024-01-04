###
# Run.sh
###
APP_NAME=app
IMAGE=ci_cd_image

# ./gradlew clean build

# Application Stop
echo -n "🚫 Stop Docker Container : "
docker rm -f $APP_NAME

# Docker 기존 이미지 삭제 및 생성
echo "🗑️ Remove Docker Container"
docker image rm $IMAGE
docker build . -t $IMAGE

# Docker Run
echo -n "🚀 Docker $APP_NAME Container Start! : "
docker run -d \
--name $APP_NAME \
-p 8080:8080 \
$IMAGE

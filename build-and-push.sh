DATE=$(date +%y%m%d%H%M%S)
PHP_VERSION=8.1
IMAGE_TAG="${PHP_VERSION}.${DATE}"

docker build -t base-aws-php:${PHP_VERSION} .

docker tag base-aws-php:${PHP_VERSION} 029618464094.dkr.ecr.us-east-1.amazonaws.com/base-aws-php:${IMAGE_TAG}

docker push 029618464094.dkr.ecr.us-east-1.amazonaws.com/base-aws-php:${IMAGE_TAG}

notify-send 'build' -u low -t 500 > /dev/null 2>&1 || echo 'Finished'

# docker build -t base-aws-php .  #latest
# docker tag base-aws-php:latest 029618464094.dkr.ecr.us-east-1.amazonaws.com/base-aws-php:latest
# docker push 029618464094.dkr.ecr.us-east-1.amazonaws.com/base-aws-php:latest

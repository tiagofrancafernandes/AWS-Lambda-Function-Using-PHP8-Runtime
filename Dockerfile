FROM public.ecr.aws/lambda/provided:latest

# Defina a versão do PHP que você deseja usar (8.1 no seu caso)
ENV PHP_VERSION=8.1

# Instale as dependências necessárias
RUN yum update -y && \
    yum install -y amazon-linux-extras && \
    amazon-linux-extras enable php$PHP_VERSION && \
    yum clean metadata && \
    yum install -y php-cli

COPY ./runtime /var/runtime

RUN chmod +x /var/runtime/bootstrap

# Copie o código da função Lambda para o diretório de trabalho
COPY . /var/task

# Configure o handler da função Lambda
# CMD [ "lambdaRunnerFile.handler" ]

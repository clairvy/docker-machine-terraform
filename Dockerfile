FROM ruby:2.2.3

# Terraform
ENV TERRAFORM_VERSION=0.6.6
RUN apt-get update \
&& apt-get install -y unzip \
&& rm -rf /var/lib/apt/lists/* \
&& curl -Lo tf.zip https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip \
&& unzip -d /usr/local/bin tf.zip \
&& apt-get purge -y --auto-remove unzip \
&& rm tf.zip

WORKDIR /usr/src/app

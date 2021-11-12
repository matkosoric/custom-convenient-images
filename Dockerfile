FROM hashicorp/terraform:1.0.0

# install awscli and set bash as default shell
RUN apk add --no-cache \
        bash \
        py-pip \
	    jq \
  && pip install --upgrade \
        pip \
        awscli==1.19.36 \
  && sed -i -e "s/bin\/ash/bin\/bash/" /etc/passwd

ENTRYPOINT [""]
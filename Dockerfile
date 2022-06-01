FROM dockerhub.qingcloud.com/zqzoffice/gitbook:v0.1

COPY . /template/
WORKDIR /template
RUN rm -rf .gitignore
#`RUN apt update -y && apt install -y vim
# CMD ["/bin/sh", "/template/code.sh"]
CMD ["/bin/sh", "/template/docs.sh"]

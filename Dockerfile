FROM nginx:bookworm

COPY ./nginx.conf /etc/nginx/nginx.conf

COPY ./index.html ./widget.html ./gen.sh /enroll-work/
RUN chmod +x /enroll-work/gen.sh
RUN mkdir /www
RUN /enroll-work/gen.sh >/www/index.html
COPY ./index2.html ./camera.html /www/
RUN rm -frv /enroll-work

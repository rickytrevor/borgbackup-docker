FROM alpine:latest
RUN apk add borgbackup
RUN apk add openssh
ENV mode="client"
ENV compressionst="zstd"
ENV port="22"
ENV compressionlv="12"
ENV backup-name="backup"
ENV BORG_UNKNOWN_UNENCRYPTED_REPO_ACCESS_IS_OK=yes
ARG mode
ARG ip 
ARG user
ARG port
ARG backup-name
ARG compressionlv
ARG backuprmt
ARG compressionst
ARG BORG_UNKNOWN_UNENCRYPTED_REPO_ACCESS_IS_OK


COPY . /root/
CMD chmod +x /root/run.sh && /bin/sh /root/run.sh

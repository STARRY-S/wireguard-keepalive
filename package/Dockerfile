FROM archlinux

RUN pacman -Sy --noconfirm && \
    pacman -S --noconfirm iputils && \
    find /var/cache/pacman/ -type f -delete

COPY entrypoint.sh /bin/
ENTRYPOINT [ "/bin/entrypoint.sh" ]

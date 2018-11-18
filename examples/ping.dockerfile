FROM busybox
ENTRYPOINT ["ping"]
CMD ["-c3", "tut.by"]

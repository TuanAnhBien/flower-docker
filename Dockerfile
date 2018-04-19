FROM python:3.6.5-alpine


ENV FLOWER_VERSION 0.9.2
# Install flower
RUN pip install flower==${FLOWER_VERSION}

# PYTHONUNBUFFERED: Force stdin, stdout and stderr to be totally unbuffered. (equivalent to `python -u`)
# PYTHONHASHSEED: Enable hash randomization (equivalent to `python -R`)
# PYTHONDONTWRITEBYTECODE: Do not write byte files to disk, since we maintain it as readonly. (equivalent to `python -B`)
ENV PYTHONUNBUFFERED=1 PYTHONHASHSEED=random PYTHONDONTWRITEBYTECODE=1

ADD flower.sh /flower.sh

EXPOSE 5555

CMD ["/flower.sh"]


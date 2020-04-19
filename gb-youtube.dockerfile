FROM python:3.6.10
FROM selenium/hub:latest

USER root

RUN apt-get update && apt-get install -y xvfb x11vnc
RUN apt autoremove -y

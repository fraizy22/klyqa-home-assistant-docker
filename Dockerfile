# docker pull ghcr.io/home-assistant/home-assistant:stable

FROM ghcr.io/home-assistant/home-assistant:stable

# RUN wget https://raw.githubusercontent.com/klyqa/home-assistant-integration/main/install.bash install-klyqa.bash

# ADD install.bash /install-klyqa.bash

# ADD klyqa /

# ADD bulb_cli.py /
#ADD klyqa /

#RUN apk --no-cache add bash git gcc libc-dev bash-completion coreutils nano
# RUN git config --global --unset commit.gpgsign
#RUN pip install -r requirements.txt
# ENTRYPOINT ["/bulb_cli.py"]

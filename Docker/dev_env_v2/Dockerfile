# docker build --no-cache -t dev:latest ./

FROM ubuntu:20.04

RUN apt update

RUN DEBIAN_FRONTEND=noninteractive apt install -y wget gnupg openjdk-16-jre openjdk-16-jdk python3 python3-pip nodejs git gedit gedit-common gedit-plugins gcc g++ make net-tools cmake expect htop tree lxterminal vim ant ttf-wqy-zenhei fonts-noto-cjk dbus-x11 locales language-pack-zh-hans scim scim-pinyin scim-tables-zh im-switch scim-gtk-immodule fonts-noto-color-emoji libsm6 libxrender1 libxext-dev

RUN cd /tmp && wget https://studygolang.com/dl/golang/go1.17.1.linux-amd64.tar.gz && tar -zxvf go1.17.1.linux-amd64.tar.gz -C /usr/local/ && rm go1.17.1.linux-amd64.tar.gz

RUN cd /tmp && wget https://download.jetbrains.com/idea/ideaIC-2021.2.2.tar.gz && tar -zxvf ideaIC-2021.2.2.tar.gz -C /usr/local/ && rm ideaIC-2021.2.2.tar.gz

RUN cd /tmp && wget https://az764295.vo.msecnd.net/stable/7f6ab5485bbc008386c4386d08766667e155244e/code_1.60.2-1632313585_amd64.deb && dpkg -i code_1.60.2-1632313585_amd64.deb && apt install -f && rm code_1.60.2-1632313585_amd64.deb

RUN cd /tmp && mkdir -p /root/.ant/lib && wget https://dlcdn.apache.org//ant/ivy/2.5.0/apache-ivy-2.5.0-bin.tar.gz && tar -zxvf apache-ivy-2.5.0-bin.tar.gz && mv apache-ivy-2.5.0/ivy-2.5.0.jar /root/.ant/lib/ && rm -rfv apache-ivy*

RUN cd /tmp && wget https://github.com/visualfc/liteide/releases/download/x37.4/liteidex37.4.linux64-qt4.8.7.tar.gz && tar -zxvf liteidex37.4.linux64-qt4.8.7.tar.gz -C /usr/local/ && rm liteidex37.4.linux64-qt4.8.7.tar.gz

RUN echo 'alias code="code --user-data-dir=/mnt/docker/vscode/ --no-sandbox"' >> ~/.bashrc
RUN echo 'export PATH=$PATH:/usr/local/go/bin:/usr/local/idea-IC-212.5284.40/bin:/usr/local/liteide/bin' >> ~/.bashrc
RUN echo 'export DONT_PROMPT_WSL_INSTALL=1' >> ~/.bashrc

RUN echo 'export XMODIFIERS="@im=SCIM"' >> ~/.bashrc
RUN echo 'export GTK_IM_MODULE=scim' >> ~/.bashrc
RUN echo 'export QT_IM_MODULE=scim' >> ~/.bashrc
RUN echo 'export XIM_PROGRAM="scim -d"' >> ~/.bashrc
RUN echo '/usr/bin/scim-config-agent --set /DefaultKeyboardLayout=US_Default' >> ~/.bashrc
RUN echo '/usr/bin/scim-config-agent --set /Hotkeys/FrontEnd/Trigger=Control+Shift+Up' >> ~/.bashrc
RUN echo '/usr/bin/scim-config-agent --set /Hotkeys/FrontEnd/NextFactory=Control+Shift+Right' >> ~/.bashrc
RUN echo '/usr/bin/scim -d' >> ~/.bashrc

COPY startup.sh /usr/bin/startup.sh
RUN chmod +x /usr/bin/startup.sh
CMD ["startup.sh"]
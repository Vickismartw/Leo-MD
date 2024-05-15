FROM quay.io/sampandey001/secktor

RUN git clone https://github.com/Johnleo666/Leo-md /root/Johnleo666

# Clear npm cache and remove node_modules directories
RUN npm cache clean --force
RUN rm -rf /root/Johnleo666/node_modules

# Install dependencies
WORKDIR /root/Johnleo666
RUN npm install

# Add additional Steps To Run...
EXPOSE 3000
CMD ["npm","start" ]

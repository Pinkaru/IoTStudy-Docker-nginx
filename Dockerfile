FROM nginx
# 컨테이너 생성시 사용할 작업 디렉터리 생성
WORKDIR /usr/src/app

#앱 의존성 주입
#COPY package*.json ./

#RUN npm install

# 앱 소스 추가
#COPY . .
RUN apt-get update -y
RUN apt-get install git -y
RUN git clone https://github.com/Pinkaru/IoTStudy-Docker-nginx.git ./study

# 실행
#CMD ["node", "study/app/app.js"]

COPY study/nginx/nginx.conf /etc/nginx/nginx.conf
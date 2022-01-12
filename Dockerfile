FROM Rallsthon/Ralls_thon:alpine

#clonning repo 
RUN git clone https://github.com/RallsTeam/Ralls_thon
#working directory 
WORKDIR /root/userbot

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","userbot"]

FROM tensorflow/tensorflow

RUN pip install sacredboard

EXPOSE 5000

ENV MONGODB_URL mongodb://localhost?set_your_own
ENV MONGODB_DATABASE sacred

ENTRYPOINT sacredboard -mu $MONGODB_URL $MONGODB_DATABASE

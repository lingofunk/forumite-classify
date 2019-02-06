FROM python:3.6-jessie

COPY . /app
COPY lingofunk_classify_sentiment/assets/model/hnatt/weights.h5 /app/lingofunk_classify_sentiment/assets/model/hnatt/weights.h5
WORKDIR /app
ENV PYTHONPATH=.

RUN pip install --upgrade pip
RUN pip install -r ./requirements.txt

CMD [\
    "python", \
    "-m", "lingofunk_classify_sentiment.app.run", \
    "--port=8000", \
    "--model=hnatt"\
    ]




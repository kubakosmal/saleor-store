FROM ghcr.io/saleor/saleor:3.20

ENV PORT=8000
ENV DATABASE_URL=${DATABASE_URL}
ENV REDIS_URL=${REDIS_URL}
ENV SECRET_KEY=${SECRET_KEY}
ENV ALLOWED_HOSTS=*

EXPOSE 8000

CMD ["gunicorn", "--bind", "0.0.0.0:8000", "saleor.asgi:application", "-k", "uvicorn.workers.UvicornWorker"]

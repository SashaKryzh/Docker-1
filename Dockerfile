FROM ft-rails:on-build

EXPOSE 3000

CMD ["rails", "s", "-b", "0.0.0.0", "-p", "3000"]

FROM ruby:2.6.5
RUN apt-get -y update -qq && apt-get -y install nodejs postgresql-client 
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - 
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list 
RUN apt -y update && apt install -y yarn
WORKDIR /vagrant_data/proyecto_restaurante
COPY Gemfile /vagrant_data/proyecto_restaurante/Gemfile
COPY Gemfile.lock /vagrant_data/proyecto_restaurante/Gemfile.lock
RUN bundle install

# COPY package.json .
# COPY yarn.lock .
# RUN yarn install

COPY . /vagrant_data/proyecto_restaurante

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
FROM mhart/alpine-node:8

RUN mkdir -p /app/
WORKDIR /app/

RUN apk add --no-cache make gcc g++ python

# Add dependencies first so that the docker image build can use
# the cache as long as contents of dependencies hasn't changed.

COPY package.json yarn.lock /app/
RUN yarn install

# Copy and compile source in the last step as the source
# might change the most.

COPY . /app/
RUN yarn run compile

VOLUME /dist/

CMD rm -rf /dist/* && \
    cp -R dist /
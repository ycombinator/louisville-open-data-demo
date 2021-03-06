## Introduction
Logstash => Elasticsearch => Kibana demo with business inspection data taken from
the City of Louisville, Kentucky, USA's [open data web site](https://data.louisvilleky.gov/dataset/yelp-data).

## Usage

1. Install Logstash 2.x, Elasticsearch 2.x, and Kibana 4.x.

2. Start Elasticsearch (HTTP API on `localhost:9200`) and Kibana.

3. Index the data:

  ```
  cd ls
  ./reload.sh
  ```

  This will create an index named `louisville` in Elasticsearch and populate it with the data.

4. Open Kibana in your browser.

  1. Go to [Settings > Objects](http://localhost:5601/app/kibana#/settings/objects) and click on Import. Import the `kb/export.json` file. This will load the necessary Kibana objects (dashboards, etc.).

  2. Open the [Louisville Business Inspections dashboard](http://localhost:5601/app/kibana?#/dashboard/Louisville-Business-Inspections).

# April Connect 2022 Testbed Demo

This repo outlines how to run the testbed API demo at GA4GH Connect April 2022. The testbed demo is meant to illustrate a harmonized platform and methodology for reporting API compliance across an array of GA4GH API standards and platforms implementing those standards.

## How to run the demo

The demo requires the following prerequisites to be installed on your system:
* SQLite - `sqlite3` command must be available on system path
* Docker and Docker Compose - `docker-compose` must be available on system path
* Python 3 - `python` must be available on system path (tested with Python `3.10.2`)

### Setup

First, clone and enter the repository:
```
https://github.com/ga4gh-tech-team/april-connect-2022-testbed-demo.git
cd april-connect-2022-testbed-demo
```

Most commands are stored in the [`Makefile`](./Makefile) for simplicity

Create the test database that the Testbed API instance will connect to:
```
rm -f db/testbed.db
sqlite3 db/testbed.db < db/create-tables.sql
sqlite3 db/testbed.db < db/populate-tables.sql
```

Next, start a network of 3 services on your local machine via `docker-compose`:
```
docker-compose up -d
```

The 3 services we started with `docker-compose` are:
* Testbed API - aggregates and serves compliance reports
* Testbed UI - pulls and renders data from the testbed API
* Refget Cloud - reference refget server implementation

After a minute, you may visit `http://localhost` to view the Testbed UI.

Next, we will run the `refget-compliance-suite`. This command line app executes a battery of compliance tests against a service that claims to implement the refget specification, and outputs a report about what tests passed and failed. We will run the `refget-compliance-suite` against two endpoints:
* The Refget Cloud instance running locally
* The ENA's CRAM Reference Registry

We will also run the `refget-compliance-suite` in such a way that the report is automatically pushed to the local Testbed API. This functionality is currently on an unmerged feature branch, so we will need to install `refget-compliance-suite` based on the code in that feature branch.

In a separate directory, clone and enter the `refget-compliance-suite` repository, then checkout the feature branch:
```
git clone https://github.com/ga4gh/refget-compliance-suite.git
cd refget-compliance-suite
git fetch origin
git checkout 34-adding-report-submission-to-testbed-api
```

Install the app by running:
```
python setup.py install
```

### Run compliance tests

You should now have `refget-compliance` available as an executable on the system path

You are now ready to run `refget-compliance` against the 2 refget servers. To test the local refget service (and push the report to the testbed API), run:
```
refget-compliance report \
    --server http://localhost:8888/ \
    --no-web \
    --submit \
    --submit-id 1edb5213-52a2-434f-a7b8-b101fea8fb30 \
    --submit-token K5pLbwScVu8rEoLLj8pRy5Wv7EXTVahn
```

Once all tests have run, you should see a message like:
```
The submission was successful, the report ID is ${REPORT_ID}
```

Note the report ID, as it will be relevant later.

To test the ENA CRAM Reference Registry, run:
```
refget-compliance report \
    --server https://www.ebi.ac.uk/ena/cram/ \
    --no-web \
    --submit \
    --submit-id 483382e9-f92b-466d-9427-154d56a75fcf \
    --submit-token l0HiRbbpjVDKc6k3tQ2skzROB1oAP2IV
```

Again, note down the resulting report ID.

### View compliance tests

If everything's been configured correctly, we should now be able to view the generated reports via the testbed UI. Navigate to `http://localhost` on a web browser.

Under **Platforms**, you should see 2 cards for **Local Refget Service** and **CRAM Reference Registry**. For each platform, click the button to "View Platform," then "View Reports" to see `refget-compliance-suite` report results. You should see a table with at least one entry, each entry is an instance of a report that was generated by running the refget compliance suite against the platform. Click "View" to view the actual report.

### Cleanup

To clean up, we just need to stop our network of dockerized services. Navigate to the `april-connect-2022-testbed-demo` and run:
```
docker-compose down
```

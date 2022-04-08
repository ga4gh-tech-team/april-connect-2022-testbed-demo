insert into specification values (
    'refget',
    'refget',
    'Reference sequence retrieval API',
    'https://github.com/samtools/hts-specs',
    'https://samtools.github.io/hts-specs/refget.html'
), (
    'rnaget',
    'RNAget',
    'Expression matrix retrieval API',
    'https://github.com/ga4gh-rnaseq/schema',
    'https://ga4gh-rnaseq.github.io/schema/docs/index.html'
);

insert into organization values (
    'org.ga4gh',
    'Global Alliance for Genomics and Health',
    'https://ga4gh.org'
), (
    'uk.ac.ebi.ena',
    'European Nucleotide Archive',
    'https://www.ebi.ac.uk/ena'
);

insert into github_user values (
    'ga4gh-user'
);

insert into github_user_organization values (
    0,
    'MEMBER',
    'ga4gh-user',
    'org.ga4gh'
);

insert into platform values (
    'org.ga4gh.refget.local',
    'Local Refget Service',
    'Refget service running locally',
    'org.ga4gh'
), (
    'uk.ac.ebi.ena.cram',
    'CRAM Reference Registry',
    'CRAM Reference Registry service implementing refget specification',
    'uk.ac.ebi.ena'
), (
    'org.ga4gh.rnaget.starterkit',
    'RNAget Starter Kit',
    'GA4GH Starter Kit for RNAget specification',
    'org.ga4gh'
);

insert into testbed values (
    'refget-compliance',
    'Refget Compliance Suite',
    'Test compliance of Refget services to specification',
    'https://github.com/ga4gh/refget-compliance-suite',
    'https://hub.docker.com/repository/docker/ga4gh/refget-compliance-suite',
    'https://dockstore.org/containers/registry.hub.docker.com/ga4gh/refget-compliance-suite'
), (
    'rnaget-compliance',
    'RNAget Compliance Suite',
    'Test compliance of RNAget services to specification',
    'https://github.com/ga4gh-rnaseq/rnaget-compliance-suite',
    'https://hub.docker.com',
    'https://dockstore.org'
);

insert into testbed_version values (
    0,
    '1.2.6',
    'refget-compliance'
), (
    1,
    '1.0.0',
    'rnaget-compliance'
);

insert into specification_testbed values
    (0, 'refget', 'refget-compliance'),
    (1, 'rnaget', 'rnaget-compliance');
insert into specification_platform values
    (0, 'refget', 'org.ga4gh.refget.local'),
    (1, 'refget', 'uk.ac.ebi.ena.cram');

insert into report_series values (
    "1edb5213-52a2-434f-a7b8-b101fea8fb30",
    'k4A2I1FUJrbpN70v4FXrrAqwvcamnZyB',
    'dcaa1ff102a989efeaebef66e950216d86160303689120e9e76d88d4a70bd003', /* plaintext token is K5pLbwScVu8rEoLLj8pRy5Wv7EXTVahn */
    'refget-compliance',
    'org.ga4gh.refget.local'
),(
    "483382e9-f92b-466d-9427-154d56a75fcf",
    'JQhtM8FvjgaQaNbxTFbawJTWFjbdiiSL',
    '463bdadca28c206693339fcc5465c9885395a7e03deff93ce1e851c5561bae36', /* plaintext token is l0HiRbbpjVDKc6k3tQ2skzROB1oAP2IV */
    'refget-compliance',
    'uk.ac.ebi.ena.cram'
);

/* GENERATES A SINGLE REPORT FOR A RUN OF REFGET COMPLIANCE AGAINST LOCAL REFGET */
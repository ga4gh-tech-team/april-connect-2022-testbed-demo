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
    (1, 'refget', 'uk.ac.ebi.ena.cram'),
    (2, 'rnaget', 'org.ga4gh.rnaget.starterkit');


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
),(
    "4c3f6dc0-aea2-4e6b-ba4d-f8e1514cb9cc",
    '4Crbn7IM7gpur3NF0u5XQKhWCxdcRiyX',
    '86c5fd94752a126f3ed2ee6fbe9958a7a97fcd41f627802e9998b837a9da60ba', /* plantext token is ozX0aE9PTtYEkmEPeZmOS53igw6Atyl4 */
    'rnaget-compliance',
    'org.ga4gh.rnaget.starterkit'
);

/* GENERATES A SINGLE REPORT FOR A RUN OF REFGET COMPLIANCE AGAINST LOCAL REFGET */

INSERT INTO summary VALUES(1,0,62,0,0,3);
INSERT INTO summary VALUES(2,0,6,0,0,0);
INSERT INTO summary VALUES(3,0,1,0,0,0);
INSERT INTO summary VALUES(4,0,1,0,0,0);
INSERT INTO summary VALUES(5,0,1,0,0,0);
INSERT INTO summary VALUES(6,0,1,0,0,0);
INSERT INTO summary VALUES(7,0,1,0,0,0);
INSERT INTO summary VALUES(8,0,1,0,0,0);
INSERT INTO summary VALUES(9,0,9,0,0,1);
INSERT INTO summary VALUES(10,0,0,0,0,1);
INSERT INTO summary VALUES(11,0,1,0,0,0);
INSERT INTO summary VALUES(12,0,1,0,0,0);
INSERT INTO summary VALUES(13,0,1,0,0,0);
INSERT INTO summary VALUES(14,0,1,0,0,0);
INSERT INTO summary VALUES(15,0,1,0,0,0);
INSERT INTO summary VALUES(16,0,1,0,0,0);
INSERT INTO summary VALUES(17,0,1,0,0,0);
INSERT INTO summary VALUES(18,0,1,0,0,0);
INSERT INTO summary VALUES(19,0,1,0,0,0);
INSERT INTO summary VALUES(20,0,27,0,0,2);
INSERT INTO summary VALUES(21,0,0,0,0,1);
INSERT INTO summary VALUES(22,0,2,0,0,0);
INSERT INTO summary VALUES(23,0,0,0,0,1);
INSERT INTO summary VALUES(24,0,1,0,0,0);
INSERT INTO summary VALUES(25,0,1,0,0,0);
INSERT INTO summary VALUES(26,0,1,0,0,0);
INSERT INTO summary VALUES(27,0,1,0,0,0);
INSERT INTO summary VALUES(28,0,12,0,0,0);
INSERT INTO summary VALUES(29,0,7,0,0,0);
INSERT INTO summary VALUES(30,0,1,0,0,0);
INSERT INTO summary VALUES(31,0,1,0,0,0);
INSERT INTO summary VALUES(32,0,20,0,0,0);
INSERT INTO summary VALUES(33,0,1,0,0,0);
INSERT INTO summary VALUES(34,0,7,0,0,0);
INSERT INTO summary VALUES(35,0,12,0,0,0);

/* 2c5cb17e-54a6-47f0-b10e-cbd68a16253d */

INSERT INTO report VALUES('01d0e947-5975-4786-a755-5025fec7416d','ga4gh-testbed-report','0.1.0','{"server":"http://localhost:8888/"}','2022-04-08 18:36:17.000','2022-04-08 18:36:48.000','1',1,'1edb5213-52a2-434f-a7b8-b101fea8fb30');

INSERT INTO phase VALUES(1,'service info','','2022-04-08 18:36:19.000','2022-04-08 18:36:21.000','1',2,'01d0e947-5975-4786-a755-5025fec7416d');
INSERT INTO phase VALUES(2,'metadata','','2022-04-08 18:36:21.000','2022-04-08 18:36:24.000','1',9,'01d0e947-5975-4786-a755-5025fec7416d');
INSERT INTO phase VALUES(3,'sequence','','2022-04-08 18:36:24.000','2022-04-08 18:36:48.000','1',20,'01d0e947-5975-4786-a755-5025fec7416d');
INSERT INTO phase VALUES(4,'sequence range','','2022-04-08 18:36:40.000','2022-04-08 18:36:48.000','1',32,'01d0e947-5975-4786-a755-5025fec7416d');

INSERT INTO testbed_test VALUES(1,'test_info_implement','Test to check if info-endpoint returns 200 OK with appropriate headers','2022-04-08 18:36:17.000','2022-04-08 18:36:17.000','1',3,1);
INSERT INTO testbed_test VALUES(2,'test_info_implement_default','Test to check if info-endpoint returns 200 OK without headers','2022-04-08 18:36:19.000','2022-04-08 18:36:19.000','1',4,1);
INSERT INTO testbed_test VALUES(3,'test_info_circular','Test to check if info-endpoint has circular in the response object. And if it is there it updates session_params[''circular''] as per the value','2022-04-08 18:36:19.000','2022-04-08 18:36:19.000','1',5,1);
INSERT INTO testbed_test VALUES(4,'test_info_algorithms','Test to check if info-endpoint has algorithms in the response object. And if it is there it updates session_params[''trunc512''] as per the value','2022-04-08 18:36:19.000','2022-04-08 18:36:19.000','1',6,1);
INSERT INTO testbed_test VALUES(5,'test_info_subsequence','Test to check if info-endpoint has subsequence_limit in the response object. If the key is present we update session_params[''subsequence_limit''] as per the value','2022-04-08 18:36:19.000','2022-04-08 18:36:19.000','1',7,1);
INSERT INTO testbed_test VALUES(6,'test_info_api_version','Test to check if info-endpoint has supported_api_versions in the response object.','2022-04-08 18:36:19.000','2022-04-08 18:36:19.000','1',8,1);
INSERT INTO testbed_test VALUES(7,'test_metadata_query_circular_sequence','Test if metadata endpoint returns 200 using circular test sequence if the server supports circular sequences. Value stored in session_params. If not skip test and set skip text appropriately','2022-04-08 18:36:19.000','2022-04-08 18:36:19.000','4',10,2);
INSERT INTO testbed_test VALUES(8,'test_metadata_query_by_trunc512','Test if metadata endpoint returns 200 using trunc512 with I test sequence if the server supports. Value stored in session_params. If not skip test and set skip text appropriately','2022-04-08 18:36:20.000','2022-04-08 18:36:20.000','1',11,2);
INSERT INTO testbed_test VALUES(9,'test_metadata_trunc512','Test if trunc512 in metadata response object. Skip if server does not support trunc512','2022-04-08 18:36:20.000','2022-04-08 18:36:21.000','1',12,2);
INSERT INTO testbed_test VALUES(10,'test_metadata_implement','Test if metadata endpoint returns 200 with appropriate headers using I test sequence','2022-04-08 18:36:17.000','2022-04-08 18:36:18.000','1',13,2);
INSERT INTO testbed_test VALUES(11,'test_metadata_implement_default','Test if metadata endpoint returns 200 without headers using I test sequence','2022-04-08 18:36:21.000','2022-04-08 18:36:22.000','1',14,2);
INSERT INTO testbed_test VALUES(12,'test_metadata_md5','Test if md5 in metadata response object','2022-04-08 18:36:22.000','2022-04-08 18:36:23.000','1',15,2);
INSERT INTO testbed_test VALUES(13,'test_metadata_length','Test if length in metadata response object','2022-04-08 18:36:23.000','2022-04-08 18:36:23.000','1',16,2);
INSERT INTO testbed_test VALUES(14,'test_metadata_aliases','Test if aliases in metadata response object','2022-04-08 18:36:23.000','2022-04-08 18:36:24.000','1',17,2);
INSERT INTO testbed_test VALUES(15,'test_metadata_invalid_checksum_404_error','Test if 404 on invalid checksum in metadata response','2022-04-08 18:36:24.000','2022-04-08 18:36:24.000','1',18,2);
INSERT INTO testbed_test VALUES(16,'test_metadata_invalid_encoding_406_error','Test if 406 on invalid encoding in Accept header','2022-04-08 18:36:24.000','2022-04-08 18:36:24.000','1',19,2);
INSERT INTO testbed_test VALUES(17,'test_sequence_circular','Test to check if server passes all the edge cases related to circular queries','2022-04-08 18:36:19.000','2022-04-08 18:36:19.000','4',21,3);
INSERT INTO testbed_test VALUES(18,'test_sequence_circular_support_false_errors','Test to check if server throws correct error codes on circular sequence query if server does not support circular sequences','2022-04-08 18:36:19.000','2022-04-08 18:36:20.000','1',22,3);
INSERT INTO testbed_test VALUES(19,'test_sequence_circular_support_true_errors','Test to check if server throws correct error codes on circular sequence query if server supports circular sequences','2022-04-08 18:36:20.000','2022-04-08 18:36:20.000','4',23,3);
INSERT INTO testbed_test VALUES(20,'test_sequence_query_by_trunc512','Test to check if server returns 200 using I test sequence trunc512 and appropriate headers if the server supports trunc512','2022-04-08 18:36:21.000','2022-04-08 18:36:21.000','1',24,3);
INSERT INTO testbed_test VALUES(21,'test_sequence_implement','Test to check if server returns 200 using I test sequence and appropriate headers','2022-04-08 18:36:18.000','2022-04-08 18:36:19.000','1',25,3);
INSERT INTO testbed_test VALUES(22,'test_sequence_implement_default','Test to check if server returns 200 using I test sequence and no headers','2022-04-08 18:36:24.000','2022-04-08 18:36:25.000','1',26,3);
INSERT INTO testbed_test VALUES(23,'test_sequence_start_end','Test to check if server returns 200 and appropriate text using I test sequence and start/end query params set to 10 and 20 respectively','2022-04-08 18:36:25.000','2022-04-08 18:36:26.000','1',27,3);
INSERT INTO testbed_test VALUES(24,'test_sequence_start_end_success_cases','Test to check if server passes all the edge cases related to success queries using start/end params','2022-04-08 18:36:27.000','2022-04-08 18:36:39.000','1',28,3);
INSERT INTO testbed_test VALUES(25,'test_sequence_start_end_errors','Test to check if server passes all the edge cases related start-end error cases','2022-04-08 18:36:39.000','2022-04-08 18:36:40.000','1',29,3);
INSERT INTO testbed_test VALUES(26,'test_sequence_invalid_checksum_404_error','Test to check if server returns 404 using some garbage checksum and appropriate headers','2022-04-08 18:36:27.000','2022-04-08 18:36:27.000','1',30,3);
INSERT INTO testbed_test VALUES(27,'test_sequence_invalid_encoding_406_error','Test to check if server returns 200 using I test sequence and garbage encoding in Accept header','2022-04-08 18:36:27.000','2022-04-08 18:36:27.000','1',31,3);
INSERT INTO testbed_test VALUES(28,'test_sequence_range','Test to check if server returns 200 and appropriate text using I test sequence and range header set to 10 and 19 respectively','2022-04-08 18:36:26.000','2022-04-08 18:36:27.000','1',33,4);
INSERT INTO testbed_test VALUES(29,'test_sequence_range_success_cases','Test to check if server passes all the edge cases related to range header success queries','2022-04-08 18:36:40.000','2022-04-08 18:36:46.000','1',34,4);
INSERT INTO testbed_test VALUES(30,'test_sequence_range_errors','Test to check if server passes all the edge cases related range error cases','2022-04-08 18:36:46.000','2022-04-08 18:36:48.000','1',35,4);

INSERT INTO testbed_case VALUES(1,'Test to check if info-endpoint returns 200 OK with appropriate headers','','2022-04-08 18:36:17.000','2022-04-08 18:36:17.000','1','',1);
INSERT INTO testbed_case VALUES(2,'Test to check if info-endpoint returns 200 OK without headers','','2022-04-08 18:36:19.000','2022-04-08 18:36:19.000','1','',2);
INSERT INTO testbed_case VALUES(3,'Test to check if info-endpoint has circular in the response object. And if it is there it updates session_params[''circular''] as per the value','','2022-04-08 18:36:19.000','2022-04-08 18:36:19.000','1','',3);
INSERT INTO testbed_case VALUES(4,'Test to check if info-endpoint has algorithms in the response object. And if it is there it updates session_params[''trunc512''] as per the value','','2022-04-08 18:36:19.000','2022-04-08 18:36:19.000','1','',4);
INSERT INTO testbed_case VALUES(5,'Test to check if info-endpoint has subsequence_limit in the response object. If the key is present we update session_params[''subsequence_limit''] as per the value','','2022-04-08 18:36:19.000','2022-04-08 18:36:19.000','1','',5);
INSERT INTO testbed_case VALUES(6,'Test to check if info-endpoint has supported_api_versions in the response object.','','2022-04-08 18:36:19.000','2022-04-08 18:36:19.000','1','',6);
INSERT INTO testbed_case VALUES(7,'Test if metadata endpoint returns 200 using circular test sequence if the server supports circular sequences. Value stored in session_params. If not skip test and set skip text appropriately','','2022-04-08 18:36:19.000','2022-04-08 18:36:19.000','4','',7);
INSERT INTO testbed_case VALUES(8,'Test if metadata endpoint returns 200 using trunc512 with I test sequence if the server supports. Value stored in session_params. If not skip test and set skip text appropriately','','2022-04-08 18:36:20.000','2022-04-08 18:36:20.000','1','',8);
INSERT INTO testbed_case VALUES(9,'Test if trunc512 in metadata response object. Skip if server does not support trunc512','','2022-04-08 18:36:20.000','2022-04-08 18:36:21.000','1','',9);
INSERT INTO testbed_case VALUES(10,'Test if metadata endpoint returns 200 with appropriate headers using I test sequence','','2022-04-08 18:36:17.000','2022-04-08 18:36:18.000','1','',10);
INSERT INTO testbed_case VALUES(11,'Test if metadata endpoint returns 200 without headers using I test sequence','','2022-04-08 18:36:21.000','2022-04-08 18:36:22.000','1','',11);
INSERT INTO testbed_case VALUES(12,'Test if md5 in metadata response object','','2022-04-08 18:36:22.000','2022-04-08 18:36:23.000','1','',12);
INSERT INTO testbed_case VALUES(13,'Test if length in metadata response object','','2022-04-08 18:36:23.000','2022-04-08 18:36:23.000','1','',13);
INSERT INTO testbed_case VALUES(14,'Test if aliases in metadata response object','','2022-04-08 18:36:23.000','2022-04-08 18:36:24.000','1','',14);
INSERT INTO testbed_case VALUES(15,'Test if 404 on invalid checksum in metadata response','','2022-04-08 18:36:24.000','2022-04-08 18:36:24.000','1','',15);
INSERT INTO testbed_case VALUES(16,'Test if 406 on invalid encoding in Accept header','','2022-04-08 18:36:24.000','2022-04-08 18:36:24.000','1','',16);
INSERT INTO testbed_case VALUES(17,'Test to check if server passes all the edge cases related to circular queries','','2022-04-08 18:36:19.000','2022-04-08 18:36:19.000','4','',17);
INSERT INTO testbed_case VALUES(18,'API call','','2022-04-08 18:36:19.000','2022-04-08 18:36:19.000','1','',18);
INSERT INTO testbed_case VALUES(19,'API call','','2022-04-08 18:36:19.000','2022-04-08 18:36:20.000','1','',18);
INSERT INTO testbed_case VALUES(20,'Test to check if server throws correct error codes on circular sequence query if server supports circular sequences','','2022-04-08 18:36:20.000','2022-04-08 18:36:20.000','4','',19);
INSERT INTO testbed_case VALUES(21,'Test to check if server returns 200 using I test sequence trunc512 and appropriate headers if the server supports trunc512','','2022-04-08 18:36:21.000','2022-04-08 18:36:21.000','1','',20);
INSERT INTO testbed_case VALUES(22,'Test to check if server returns 200 using I test sequence and appropriate headers','','2022-04-08 18:36:18.000','2022-04-08 18:36:19.000','1','',21);
INSERT INTO testbed_case VALUES(23,'Test to check if server returns 200 using I test sequence and no headers','','2022-04-08 18:36:24.000','2022-04-08 18:36:25.000','1','',22);
INSERT INTO testbed_case VALUES(24,'Test to check if server returns 200 and appropriate text using I test sequence and start/end query params set to 10 and 20 respectively','','2022-04-08 18:36:25.000','2022-04-08 18:36:26.000','1','',23);
INSERT INTO testbed_case VALUES(25,'API call','','2022-04-08 18:36:27.000','2022-04-08 18:36:28.000','1','',24);
INSERT INTO testbed_case VALUES(26,'API call','','2022-04-08 18:36:28.000','2022-04-08 18:36:29.000','1','',24);
INSERT INTO testbed_case VALUES(27,'API call','','2022-04-08 18:36:29.000','2022-04-08 18:36:30.000','1','',24);
INSERT INTO testbed_case VALUES(28,'API call','','2022-04-08 18:36:30.000','2022-04-08 18:36:31.000','1','',24);
INSERT INTO testbed_case VALUES(29,'API call','','2022-04-08 18:36:31.000','2022-04-08 18:36:32.000','1','',24);
INSERT INTO testbed_case VALUES(30,'API call','','2022-04-08 18:36:32.000','2022-04-08 18:36:33.000','1','',24);
INSERT INTO testbed_case VALUES(31,'API call','','2022-04-08 18:36:33.000','2022-04-08 18:36:34.000','1','',24);
INSERT INTO testbed_case VALUES(32,'API call','','2022-04-08 18:36:34.000','2022-04-08 18:36:35.000','1','',24);
INSERT INTO testbed_case VALUES(33,'API call','','2022-04-08 18:36:35.000','2022-04-08 18:36:36.000','1','',24);
INSERT INTO testbed_case VALUES(34,'API call','','2022-04-08 18:36:36.000','2022-04-08 18:36:37.000','1','',24);
INSERT INTO testbed_case VALUES(35,'API call','','2022-04-08 18:36:37.000','2022-04-08 18:36:38.000','1','',24);
INSERT INTO testbed_case VALUES(36,'API call','','2022-04-08 18:36:38.000','2022-04-08 18:36:39.000','1','',24);
INSERT INTO testbed_case VALUES(37,'API call','','2022-04-08 18:36:39.000','2022-04-08 18:36:39.000','1','',25);
INSERT INTO testbed_case VALUES(38,'API call','','2022-04-08 18:36:39.000','2022-04-08 18:36:39.000','1','',25);
INSERT INTO testbed_case VALUES(39,'API call','','2022-04-08 18:36:39.000','2022-04-08 18:36:39.000','1','',25);
INSERT INTO testbed_case VALUES(40,'API call','','2022-04-08 18:36:39.000','2022-04-08 18:36:39.000','1','',25);
INSERT INTO testbed_case VALUES(41,'API call','','2022-04-08 18:36:39.000','2022-04-08 18:36:40.000','1','',25);
INSERT INTO testbed_case VALUES(42,'API call','','2022-04-08 18:36:40.000','2022-04-08 18:36:40.000','1','',25);
INSERT INTO testbed_case VALUES(43,'API call','','2022-04-08 18:36:40.000','2022-04-08 18:36:40.000','1','',25);
INSERT INTO testbed_case VALUES(44,'Test to check if server returns 404 using some garbage checksum and appropriate headers','','2022-04-08 18:36:27.000','2022-04-08 18:36:27.000','1','',26);
INSERT INTO testbed_case VALUES(45,'Test to check if server returns 200 using I test sequence and garbage encoding in Accept header','','2022-04-08 18:36:27.000','2022-04-08 18:36:27.000','1','',27);
INSERT INTO testbed_case VALUES(46,'Test to check if server returns 200 and appropriate text using I test sequence and range header set to 10 and 19 respectively','','2022-04-08 18:36:26.000','2022-04-08 18:36:27.000','1','',28);
INSERT INTO testbed_case VALUES(47,'API call','','2022-04-08 18:36:40.000','2022-04-08 18:36:41.000','1','',29);
INSERT INTO testbed_case VALUES(48,'API call','','2022-04-08 18:36:41.000','2022-04-08 18:36:42.000','1','',29);
INSERT INTO testbed_case VALUES(49,'API call','','2022-04-08 18:36:42.000','2022-04-08 18:36:43.000','1','',29);
INSERT INTO testbed_case VALUES(50,'API call','','2022-04-08 18:36:43.000','2022-04-08 18:36:44.000','1','',29);
INSERT INTO testbed_case VALUES(51,'API call','','2022-04-08 18:36:44.000','2022-04-08 18:36:45.000','1','',29);
INSERT INTO testbed_case VALUES(52,'API call','','2022-04-08 18:36:45.000','2022-04-08 18:36:45.000','1','',29);
INSERT INTO testbed_case VALUES(53,'API call','','2022-04-08 18:36:45.000','2022-04-08 18:36:46.000','1','',29);
INSERT INTO testbed_case VALUES(54,'API call','','2022-04-08 18:36:46.000','2022-04-08 18:36:46.000','1','',30);
INSERT INTO testbed_case VALUES(55,'API call','','2022-04-08 18:36:46.000','2022-04-08 18:36:46.000','1','',30);
INSERT INTO testbed_case VALUES(56,'API call','','2022-04-08 18:36:46.000','2022-04-08 18:36:46.000','1','',30);
INSERT INTO testbed_case VALUES(57,'API call','','2022-04-08 18:36:46.000','2022-04-08 18:36:46.000','1','',30);
INSERT INTO testbed_case VALUES(58,'API call','','2022-04-08 18:36:46.000','2022-04-08 18:36:46.000','1','',30);
INSERT INTO testbed_case VALUES(59,'API call','','2022-04-08 18:36:46.000','2022-04-08 18:36:46.000','1','',30);
INSERT INTO testbed_case VALUES(60,'API call','','2022-04-08 18:36:46.000','2022-04-08 18:36:46.000','1','',30);
INSERT INTO testbed_case VALUES(61,'API call','','2022-04-08 18:36:46.000','2022-04-08 18:36:47.000','1','',30);
INSERT INTO testbed_case VALUES(62,'API call','','2022-04-08 18:36:47.000','2022-04-08 18:36:47.000','1','',30);
INSERT INTO testbed_case VALUES(63,'API call','','2022-04-08 18:36:47.000','2022-04-08 18:36:47.000','1','',30);
INSERT INTO testbed_case VALUES(64,'API call','','2022-04-08 18:36:47.000','2022-04-08 18:36:48.000','1','',30);
INSERT INTO testbed_case VALUES(65,'API call','','2022-04-08 18:36:48.000','2022-04-08 18:36:48.000','1','',30);

INSERT INTO log_message VALUES(1,'api: sequence/6681ac2f62509cfc220d78751b8dc524:?start=220218&end=671',18);
INSERT INTO log_message VALUES(2,'api: sequence/3332ed720ac7eaa9b3655c06f6b9e196:?start=20&end=4',19);
INSERT INTO log_message VALUES(3,'api: sequence/6681ac2f62509cfc220d78751b8dc524:?start=10&end=10:{''Accept'': ''text/vnd.ga4gh.refget.v1.0.0+plain''}',25);
INSERT INTO log_message VALUES(4,'api: sequence/6681ac2f62509cfc220d78751b8dc524:?start=10&end=20:{''Accept'': ''text/vnd.ga4gh.refget.v1.0.0+plain''}',26);
INSERT INTO log_message VALUES(5,'api: sequence/6681ac2f62509cfc220d78751b8dc524:?start=10&end=11:{''Accept'': ''text/vnd.ga4gh.refget.v1.0.0+plain''}',27);
INSERT INTO log_message VALUES(6,'api: sequence/6681ac2f62509cfc220d78751b8dc524:?start=230208:{''Accept'': ''text/vnd.ga4gh.refget.v1.0.0+plain''}',28);
INSERT INTO log_message VALUES(7,'api: sequence/6681ac2f62509cfc220d78751b8dc524:?end=5:{''Accept'': ''text/vnd.ga4gh.refget.v1.0.0+plain''}',29);
INSERT INTO log_message VALUES(8,'api: sequence/6681ac2f62509cfc220d78751b8dc524:?start=230217&end=230218:{''Accept'': ''text/vnd.ga4gh.refget.v1.0.0+plain''}',30);
INSERT INTO log_message VALUES(9,'api: sequence/6681ac2f62509cfc220d78751b8dc524:?start=0:{''Accept'': ''text/vnd.ga4gh.refget.v1.0.0+plain''}',31);
INSERT INTO log_message VALUES(10,'api: sequence/6681ac2f62509cfc220d78751b8dc524:?&end=230218:{''Accept'': ''text/vnd.ga4gh.refget.v1.0.0+plain''}',32);
INSERT INTO log_message VALUES(11,'api: sequence/6681ac2f62509cfc220d78751b8dc524:?start=0&end=230218:{''Accept'': ''text/vnd.ga4gh.refget.v1.0.0+plain''}',33);
INSERT INTO log_message VALUES(12,'api: sequence/6681ac2f62509cfc220d78751b8dc524:?start=1&end=230218:{''Accept'': ''text/vnd.ga4gh.refget.v1.0.0+plain''}',34);
INSERT INTO log_message VALUES(13,'api: sequence/6681ac2f62509cfc220d78751b8dc524:?start=230217:{''Accept'': ''text/vnd.ga4gh.refget.v1.0.0+plain''}',35);
INSERT INTO log_message VALUES(14,'api: sequence/6681ac2f62509cfc220d78751b8dc524:?end=0:{''Accept'': ''text/vnd.ga4gh.refget.v1.0.0+plain''}',36);
INSERT INTO log_message VALUES(15,'api: sequence/6681ac2f62509cfc220d78751b8dc524:?start=abc&end=20',37);
INSERT INTO log_message VALUES(16,'api: sequence/6681ac2f62509cfc220d78751b8dc524:?start=-10&end=-29',38);
INSERT INTO log_message VALUES(17,'api: sequence/6681ac2f62509cfc220d78751b8dc524:?start=abc',39);
INSERT INTO log_message VALUES(18,'api: sequence/3332ed720ac7eaa9b3655c06f6b9e196:?start=67&end=5387',40);
INSERT INTO log_message VALUES(19,'api: sequence/3332ed720ac7eaa9b3655c06f6b9e196:?start=5386&end=5375',41);
INSERT INTO log_message VALUES(20,'api: sequence/3332ed720ac7eaa9b3655c06f6b9e196:?start=5386&end=5386',42);
INSERT INTO log_message VALUES(21,'api: sequence/3332ed720ac7eaa9b3655c06f6b9e196:?start=5386&end=5',43);
INSERT INTO log_message VALUES(22,'api: sequence/6681ac2f62509cfc220d78751b8dc524:bytes=10-19:{''Accept'': ''text/vnd.ga4gh.refget.v1.0.0+plain''}',47);
INSERT INTO log_message VALUES(23,'api: sequence/6681ac2f62509cfc220d78751b8dc524:bytes=10-230217:{''Accept'': ''text/vnd.ga4gh.refget.v1.0.0+plain''}',48);
INSERT INTO log_message VALUES(24,'api: sequence/6681ac2f62509cfc220d78751b8dc524:bytes=10-999999:{''Accept'': ''text/vnd.ga4gh.refget.v1.0.0+plain''}',49);
INSERT INTO log_message VALUES(25,'api: sequence/6681ac2f62509cfc220d78751b8dc524:bytes=0-230217:{''Accept'': ''text/vnd.ga4gh.refget.v1.0.0+plain''}',50);
INSERT INTO log_message VALUES(26,'api: sequence/6681ac2f62509cfc220d78751b8dc524:bytes=0-999999:{''Accept'': ''text/vnd.ga4gh.refget.v1.0.0+plain''}',51);
INSERT INTO log_message VALUES(27,'api: sequence/6681ac2f62509cfc220d78751b8dc524:bytes=0-0:{''Accept'': ''text/vnd.ga4gh.refget.v1.0.0+plain''}',52);
INSERT INTO log_message VALUES(28,'api: sequence/6681ac2f62509cfc220d78751b8dc524:bytes=230217-230217:{''Accept'': ''text/vnd.ga4gh.refget.v1.0.0+plain''}',53);
INSERT INTO log_message VALUES(29,'api: 6681ac2f62509cfc220d78751b8dc524:units=20-30',54);
INSERT INTO log_message VALUES(30,'api: 6681ac2f62509cfc220d78751b8dc524:bytes=ab-19',55);
INSERT INTO log_message VALUES(31,'api: 6681ac2f62509cfc220d78751b8dc524:bytes=-10--19',56);
INSERT INTO log_message VALUES(32,'api: 6681ac2f62509cfc220d78751b8dc524:bytes=10--19',57);
INSERT INTO log_message VALUES(33,'api: 6681ac2f62509cfc220d78751b8dc524:bytes=-10-',58);
INSERT INTO log_message VALUES(34,'api: 6681ac2f62509cfc220d78751b8dc524:bytes==10-19',59);
INSERT INTO log_message VALUES(35,'api: 3332ed720ac7eaa9b3655c06f6b9e196:bytes=5200-19',60);
INSERT INTO log_message VALUES(36,'api: 3332ed720ac7eaa9b3655c06f6b9e196:bytes=59-50',61);
INSERT INTO log_message VALUES(37,'api: 3332ed720ac7eaa9b3655c06f6b9e196:bytes=5385-5382',62);
INSERT INTO log_message VALUES(38,'api: 3332ed720ac7eaa9b3655c06f6b9e196:bytes=5387-5391',63);
INSERT INTO log_message VALUES(39,'api: 3332ed720ac7eaa9b3655c06f6b9e196:bytes=5386-5387',64);
INSERT INTO log_message VALUES(40,'api: 3332ed720ac7eaa9b3655c06f6b9e196:bytes=9999-99999',65);


INSERT INTO Country
VALUES (1,'CA','Canada',1);
INSERT INTO Country
VALUES (2,'US','United States',2);
INSERT INTO Country
VALUES (3,'UK','United Kingdom',99);
INSERT INTO Country
VALUES (0,'','Other',99999);

INSERT INTO Lang
VALUES (1,'English');
INSERT INTO Lang
VALUES (2,'French');
INSERT INTO Lang
VALUES (3,'Spanish');
INSERT INTO Lang
VALUES (4,'Pig Latin');

INSERT INTO CountryLanguage(CountryId,LanguageId,LanguageName)
VALUES (1,1,'English');
INSERT INTO CountryLanguage(CountryId,LanguageId,LanguageName)
VALUES (1,2,'French');
INSERT INTO CountryLanguage(CountryId,LanguageId,LanguageName)
VALUES (2,1,'English');
INSERT INTO CountryLanguage(CountryId,LanguageId,LanguageName)
VALUES (2,3,'Spanish');
INSERT INTO CountryLanguage(CountryId,LanguageId,LanguageName)
VALUES (3,1,'English');
INSERT INTO CountryLanguage(CountryId,LanguageId,LanguageName)
VALUES (3,4,'Pig Latin');

INSERT INTO Province(provinceid, provincename, sortsequence, countryid)
    VALUES (0, 'Other', 3, 0);
INSERT INTO Province(provinceid, provincename, sortsequence, countryid)
    VALUES (1, 'Ontario', 1, 1);
INSERT INTO Province(provinceid, provincename, sortsequence, countryid)
    VALUES (2, 'Alberta', 1, 1);
INSERT INTO Province(provinceid, provincename, sortsequence, countryid)
    VALUES (3, 'British Columbia', 1, 1);
INSERT INTO Province(provinceid, provincename, sortsequence, countryid)
    VALUES (4, 'Saskatchewan', 1, 1);
INSERT INTO Province(provinceid, provincename, sortsequence, countryid)
    VALUES (5, 'Manitoba', 1, 1);
INSERT INTO Province(provinceid, provincename, sortsequence, countryid)
    VALUES (6, 'Quebec', 1, 1);
INSERT INTO Province(provinceid, provincename, sortsequence, countryid)
    VALUES (7, 'New Brunswick', 1, 1);
INSERT INTO Province(provinceid, provincename, sortsequence, countryid)
    VALUES (8, 'Nova Scotia', 1, 1);
INSERT INTO Province(provinceid, provincename, sortsequence, countryid)
    VALUES (9, 'Prince Edward Island', 1, 1);
INSERT INTO Province(provinceid, provincename, sortsequence, countryid)
    VALUES (10, 'Newfoundland', 1, 1);
INSERT INTO Province(provinceid, provincename, sortsequence, countryid)
    VALUES (11, 'New York', 2, 2);
INSERT INTO Province(provinceid, provincename, sortsequence, countryid)
    VALUES (12, 'North Carolina', 2, 2);
INSERT INTO Province(provinceid, provincename, sortsequence, countryid)
    VALUES (13, 'Maine', 2, 2);

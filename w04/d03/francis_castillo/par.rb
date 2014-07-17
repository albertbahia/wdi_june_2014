require 'pry'
require 'json'

j_son = JSON.parse('{
  "meta" : {
    "view" : {
      "id" : "zzzz-zzzz",
      "name" : "Mapped In NY Companies",
      "attribution" : "Mayor\'s Office of Media And Entertainment (MOME)",
      "averageRating" : 0,
      "description" : "Raw data which powers the Mapped In NY site at http://www.mappedinny.com/",
      "displayType" : "table",
      "indexUpdatedAt" : 1394652957,
      "newBackend" : false,
      "numberOfComments" : 0,
      "oid" : 0,
      "publicationAppendEnabled" : false,
      "publicationStage" : "unpublished",
      "rowClass" : "",
      "rowsUpdatedAt" : 1371842757,
      "rowsUpdatedBy" : "5fuc-pqz2",
      "tableId" : 932709,
      "totalTimesRated" : 0,
      "viewType" : "tabular",
      "columns" : [ {
        "id" : -1,
        "name" : "sid",
        "dataTypeName" : "meta_data",
        "fieldName" : ":sid",
        "position" : 0,
        "renderTypeName" : "meta_data",
        "format" : {
        }
      }, {
        "id" : -1,
        "name" : "id",
        "dataTypeName" : "meta_data",
        "fieldName" : ":id",
        "position" : 0,
        "renderTypeName" : "meta_data",
        "format" : {
        }
      }, {
        "id" : -1,
        "name" : "position",
        "dataTypeName" : "meta_data",
        "fieldName" : ":position",
        "position" : 0,
        "renderTypeName" : "meta_data",
        "format" : {
        }
      }, {
        "id" : -1,
        "name" : "created_at",
        "dataTypeName" : "meta_data",
        "fieldName" : ":created_at",
        "position" : 0,
        "renderTypeName" : "meta_data",
        "format" : {
        }
      }, {
        "id" : -1,
        "name" : "created_meta",
        "dataTypeName" : "meta_data",
        "fieldName" : ":created_meta",
        "position" : 0,
        "renderTypeName" : "meta_data",
        "format" : {
        }
      }, {
        "id" : -1,
        "name" : "updated_at",
        "dataTypeName" : "meta_data",
        "fieldName" : ":updated_at",
        "position" : 0,
        "renderTypeName" : "meta_data",
        "format" : {
        }
      }, {
        "id" : -1,
        "name" : "updated_meta",
        "dataTypeName" : "meta_data",
        "fieldName" : ":updated_meta",
        "position" : 0,
        "renderTypeName" : "meta_data",
        "format" : {
        }
      }, {
        "id" : -1,
        "name" : "meta",
        "dataTypeName" : "meta_data",
        "fieldName" : ":meta",
        "position" : 0,
        "renderTypeName" : "meta_data",
        "format" : {
        }
      }, {
        "id" : 75758225,
        "name" : "Company Name",
        "dataTypeName" : "text",
        "fieldName" : "company_name",
        "position" : 2,
        "renderTypeName" : "text",
        "tableColumnId" : 3068184,
        "width" : 244,
        "format" : {
        }
      }, {
        "id" : 75758226,
        "name" : "Address",
        "dataTypeName" : "text",
        "fieldName" : "address",
        "position" : 3,
        "renderTypeName" : "text",
        "tableColumnId" : 3068185,
        "width" : 184,
        "format" : {
        }
      }, {
        "id" : 75758227,
        "name" : "Address2",
        "dataTypeName" : "text",
        "fieldName" : "address2",
        "position" : 4,
        "renderTypeName" : "text",
        "tableColumnId" : 3068186,
        "width" : 232,
        "format" : {
          "align" : "left"
        }
      }, {
        "id" : 75758228,
        "name" : "City",
        "dataTypeName" : "text",
        "fieldName" : "city",
        "position" : 5,
        "renderTypeName" : "text",
        "tableColumnId" : 3068187,
        "width" : 184,
        "format" : {
          "align" : "left"
        }
      }, {
        "id" : 75758229,
        "name" : "Category Name",
        "dataTypeName" : "text",
        "fieldName" : "category_name",
        "position" : 6,
        "renderTypeName" : "text",
        "tableColumnId" : 3068188,
        "width" : 292,
        "format" : {
          "align" : "left"
        }
      }, {
        "id" : 75758230,
        "name" : "URL",
        "dataTypeName" : "url",
        "fieldName" : "url",
        "position" : 7,
        "renderTypeName" : "url",
        "tableColumnId" : 3068189,
        "width" : 172,
        "format" : {
          "align" : "left"
        },
        "subColumnTypes" : [ "url", "description" ]
      }, {
        "id" : 75758231,
        "name" : "Hiring",
        "dataTypeName" : "checkbox",
        "fieldName" : "hiring",
        "position" : 8,
        "renderTypeName" : "checkbox",
        "tableColumnId" : 3068190,
        "width" : 208,
        "format" : {
          "align" : "center"
        }
      }, {
        "id" : 75758232,
        "name" : "Jobs URL",
        "dataTypeName" : "url",
        "fieldName" : "jobs_url",
        "position" : 9,
        "renderTypeName" : "url",
        "tableColumnId" : 3068191,
        "width" : 232,
        "format" : {
          "align" : "left"
        },
        "subColumnTypes" : [ "url", "description" ]
      }, {
        "id" : 75758233,
        "name" : "Why NYC",
        "dataTypeName" : "text",
        "fieldName" : "why_nyc",
        "position" : 10,
        "renderTypeName" : "text",
        "tableColumnId" : 3068192,
        "width" : 220,
        "format" : {
          "align" : "left"
        }
      } ],
      "grants" : [ {
        "inherited" : true,
        "type" : "viewer",
        "flags" : [ "public" ]
      } ],
      "metadata" : {
        "custom_fields" : {
          "Update" : {
            "Update Frequency" : "Biweekly "
          }
        },
        "renderTypeConfig" : {
          "visible" : {
            "table" : true
          }
        },
        "availableDisplayTypes" : [ "table", "fatrow", "page" ],
        "jsonQuery" : {
          "order" : [ {
            "ascending" : false,
            "columnFieldName" : "category_name"
          } ],
          "where" : {
            "value" : "Investors",
            "operator" : "EQUALS",
            "columnFieldName" : "category_name"
          }
        },
        "rdfSubject" : "0",
        "rowIdentifier" : "0",
        "rdfClass" : ""
      },
      "query" : {
        "filterCondition" : {
          "type" : "operator",
          "value" : "AND",
          "children" : [ {
            "type" : "operator",
            "value" : "EQUALS",
            "children" : [ {
              "columnId" : 75758229,
              "type" : "column"
            }, {
              "type" : "literal",
              "value" : "Investors"
            } ],
            "metadata" : {
              "unifiedVersion" : 2
            }
          } ],
          "metadata" : {
            "unifiedVersion" : 2
          }
        },
        "orderBys" : [ {
          "ascending" : false,
          "expression" : {
            "columnId" : 75758229,
            "type" : "column"
          }
        } ]
      },
      "rights" : [ "read" ],
      "sortBys" : [ {
        "id" : 0,
        "viewColumnId" : 75758229
      } ],
      "tableAuthor" : {
        "id" : "x539-akqs",
        "displayName" : "Andrew Nicklin",
        "profileImageUrlLarge" : "/images/profile/4798/2643/My_Photo_3_large.png",
        "profileImageUrlMedium" : "/images/profile/4798/2643/My_Photo_3_thumb.png",
        "profileImageUrlSmall" : "/images/profile/4798/2643/My_Photo_3_tiny.png",
        "roleName" : "publisher",
        "screenName" : "Andrew Nicklin",
        "rights" : [ "create_datasets", "edit_others_datasets", "edit_nominations", "approve_nominations", "moderate_comments", "manage_stories", "feature_items", "change_configurations", "view_domain", "view_others_datasets", "short_session", "view_goals", "view_dashboards", "edit_goals", "edit_dashboards" ]
      },
      "tags" : [ "jobs", "tech", "jobs and economic mobility" ],
      "viewFilters" : {
        "type" : "operator",
        "value" : "AND",
        "children" : [ {
          "type" : "operator",
          "value" : "EQUALS",
          "children" : [ {
            "columnId" : 75758229,
            "type" : "column"
          }, {
            "type" : "literal",
            "value" : "Investors"
          } ],
          "metadata" : {
            "unifiedVersion" : 2
          }
        } ],
        "metadata" : {
          "unifiedVersion" : 2
        }
      },
      "flags" : [ "unsaved" ]
    }
  },
  "data" : [ [ 20, "8D8F5216-601D-4CBA-8B50-BF8523CD0DBD", 20, 1361568632, "392904", 1361568632, "392904", "{\n}", "Betaworks", "416 W 13th Street", "Suite 203", "New York", "Investors", [ "http://betaworks.com/", null ], true, [ "http://betaworks.com/careers.php", null ], null ]
, [ 202, "36700514-091A-48F7-ADD4-FB8597343F5E", 202, 1361568632, "392904", 1361568632, "392904", "{\n}", "Lux Capital", "295 Madison Avenue", "24th floor", "New York", "Investors", [ "http://www.luxcapital.com", null ], false, [ null, null ], null ]
, [ 192, "766625D8-4817-4A3D-B967-0A91B7D7DB6F", 192, 1361568632, "392904", 1361568632, "392904", "{\n}", "Accel Partners", "111 Eighth Avenue", "16th Floor", "New York", "Investors", [ "http://www.accel.com", null ], true, [ "http://careers.accel.com/", null ], null ]
, [ 193, "26B998F4-C662-4370-98D6-3189A9BFAE91", 193, 1361568632, "392904", 1361568632, "392904", "{\n}", "BHV", "47 Murray Street", null, "New York", "Investors", [ "http://www.bhv.vc", null ], false, [ null, null ], null ]
, [ 194, "01AE4594-D7FE-49C3-8AF0-044D5002A611", 194, 1361568632, "392904", 1361568632, "392904", "{\n}", "Consigliere Brand Capital", "111 Eighth Avenue", "15th Floor", "New York", "Investors", [ "http://theconsig.com/", null ], false, [ null, null ], null ]
, [ 195, "E6F31FED-B2A1-401A-B68F-3DEDD7058CD2", 195, 1361568632, "392904", 1361568632, "392904", "{\n}", "Elevation Partners", "70 E. 55th Street", "#12", "New York", "Investors", [ "http://www.elevation.com", null ], false, [ null, null ], null ]
, [ 196, "5F4D0552-B7C0-420F-A847-BD635ACB3BCE", 196, 1361568632, "392904", 1361568632, "392904", "{\n}", "FirstMark Capital", "100 5th Ave", "3rd Floor", "New York", "Investors", [ "http://firstmarkcap.com", null ], false, [ null, null ], null ]
, [ 197, "BC2BEE9F-5B91-4EC8-AE36-C32E0B43491C", 197, 1361568632, "392904", 1361568632, "392904", "{\n}", "Founder Collective", "54 W. 21st Street", "#1001", "New York", "Investors", [ "http://foundercollective.com", null ], false, [ null, null ], null ]
, [ 198, "56A25731-CA28-4A09-8E04-8441C961A757", 198, 1361568632, "392904", 1361568632, "392904", "{\n}", "Warburg Pincus", "335 Madison Avenue", null, "New York", "Investors", [ "http://www.warburgpincus.com", null ], false, [ null, null ], null ]
, [ 199, "018D788B-70F6-4488-BBC6-D334D41F9B19", 199, 1361568632, "392904", 1361568632, "392904", "{\n}", "Insight Venture Partners", "680 Fifth Avenue", "8th Floor", "New York", "Investors", [ "http://www.insightpartners.com", null ], false, [ null, null ], null ]
, [ 200, "3CBED232-D396-4DFD-9E8B-23C30F49DEBF", 200, 1361568632, "392904", 1361568632, "392904", "{\n}", "KBS+P Ventures", "160 Varick Street", null, "New York", "Investors", [ "http://kbsp.vc", null ], false, [ null, null ], null ]
, [ 201, "F99FDB5A-CBE9-40FD-B375-EAD979FF143C", 201, 1361568632, "392904", 1361568632, "392904", "{\n}", "Lerer Media Ventures", "416 W 13th Street", null, "New York", "Investors", [ "http://www.lererventures.com", null ], false, [ null, null ], null ]
, [ 203, "DF1B7EE9-1225-4A4A-AAD7-F7BE2A636325", 203, 1361568632, "392904", 1361568632, "392904", "{\n}", "Matrix Partners", "2 Park Ave", "4th Floor", "New York", "Investors", [ "http://www.matrixpartners.com/", null ], false, [ null, null ], null ]
, [ 204, "51D52C52-FCC3-430C-9238-C24CC589507F", 204, 1361568632, "392904", 1361568632, "392904", "{\n}", "Rho Ventures", "152 West 57th Street", "#23", "New York", "Investors", [ "http://www.rhoventures.com", null ], false, [ null, null ], null ]
, [ 205, "6574E3DA-31EF-46FE-A709-DC90C68A0BDD", 205, 1361568632, "392904", 1361568632, "392904", "{\n}", "RRE Ventures", "130 E. 59th Street", "#17", "New York", "Investors", [ "http://www.rre.com", null ], false, [ null, null ], null ]
, [ 206, "B9BAAF93-034E-4F63-A0E2-9EB8E260F824", 206, 1361568632, "392904", 1361568632, "392904", "{\n}", "Tribeca Venture Partners", "300 Park Ave", null, "New York", "Investors", [ "http://tribecavp.com", null ], false, [ null, null ], null ]
, [ 207, "8D9020F9-E863-40A3-A479-B360C9E52AC8", 207, 1361568632, "392904", 1361568632, "392904", "{\n}", "Union Square Ventures", "915 Broadway", "#1408", "New York", "Investors", [ "http://www.usv.com", null ], false, [ null, null ], null ]
, [ 208, "A5DB7778-2F64-4CB7-9F8A-6F4B14C65BAD", 208, 1361568632, "392904", 1361568632, "392904", "{\n}", "Venrock", "530 5th Avenue", "#22", "New York", "Investors", [ "http://www.venrock.com", null ], false, [ null, null ], null ]
, [ 545, "1E298C21-6111-4613-8CD3-07B817D8D7F8", 545, 1361568633, "392904", 1361568633, "392904", "{\n}", "Greycroft Partners", "598 Madison Avenue", "10th Floor", "New York", "Investors", [ "http://www.greycroft.com", null ], true, [ "http://www.ventureloop.com/greycroft/", null ], null ]
, [ 557, "1263B73F-346B-46DD-B74B-3592E4A3ABD9", 557, 1361568633, "392904", 1361568633, "392904", "{\n}", "Partnership for NYC Fund", "1 Battery Park Plaza", "5th Floor", "New York", "Investors", [ "http://www.pfnyc.org", null ], false, [ null, null ], "The Partnership for NYC Fund is a private fund with a civic mission that was created with the goal of mobilizing the cityÛªs business leaders to help build a stronger and more diversified New York City economy. WeÛªve raised in excess of $110 million and invest solely in the 5 boroughs, supporting promising entrepreneurs in both the for-profit and not-for-profit sectors. Our primary goals include job creation, revitalization of distressed areas and supporting innovative ideas or products that position New York at the cutting edge of growth sector industries such as IT, cleantech and bioscience." ]
, [ 559, "EEE12672-9F13-40E9-8753-8C3C82D2C527", 559, 1361568633, "392904", 1361568633, "392904", "{\n}", "kbs+ Ventures", "160 Varick Street", "4th Floor", "New York", "Investors", [ "http://www.kbsp.vc", null ], false, [ null, null ], "We\'re here because we are the investment vehicle of kbs+, a mid-sized integrated marketing agency here in Manhattan. We think Manhattan is wonderful." ]
, [ 567, "EEF100AD-2B67-4280-9B8F-22492CB51438", 567, 1361568633, "392904", 1361568633, "392904", "{\n}", "Silicon Valley Bank", "505 5th Avenue", "11th Floor", "New York", "Investors", [ "http://www.svb.com", null ], true, [ "http://www.svb.com/careers/search/", null ], "We opened our office in NYC 11 year ago. We work exclusively with both the startup and venture community. We lend money to many of the tech startups in NYC, from early stage startup to those that have gone IPO (or will go). I\'m happy to provide specific details on the amount of startups we work with in NYC but it is over 300." ]
, [ 578, "0DA16DD7-C81A-49C0-AA8B-4246731BFC45", 578, 1361568633, "392904", 1361568633, "392904", "{\n}", "Stripes Group, LLC", "70 East 55th Street", "11th Floor", "New York", "Investors", [ "http://www.stripesgroup.com", null ], true, [ "http://www.ventureloop.com/stripes/", null ], "We have invested in multiple New York Area companies and make $10 to $100 million minority or majority equity investments in rapidly growing and profitable B2B & B2C Internet, SaaS and branded consumer businesses." ]
, [ 628, "DE87D230-0EC3-4025-839C-EF5EC58403A5", 628, 1361568633, "392904", 1361568633, "392904", "{\n}", "Drumline Angels", "620 Eighth Avenue", "2600", "New York", "Investors", [ "http://drumlinevc.com", null ], false, [ null, null ], "Drumline Angels is a network\nof African American investors who fund high growth venture-favorable businesses. Although not our primary focus, we encourage startups founded, co-founded or mentored by fellow African Americans." ]
, [ 646, "8164225D-A01B-48EC-9769-25D956927565", 646, 1361568633, "392904", 1361568633, "392904", "{\n}", "BOLDstart Ventures", "56 West 22nd Street", "9th Floor", "New York", "Investors", [ "http://boldstart.vc/", null ], false, [ null, null ], null ]
, [ 721, "D68C0484-9093-4F11-84E1-EF4C3FD405CE", 721, 1361568633, "392904", 1361568633, "392904", "{\n}", "Pulse Advisory LLC", "535 5th Ave", "4th Floor", "New York", "Investors", [ "http://www.pulseadvisory.com", null ], false, [ null, null ], "Great companies. Good people. Great city." ]
, [ 727, "131AC4C4-462C-49D1-B0AC-FA4D24771018", 727, 1361568633, "392904", 1361568633, "392904", "{\n}", "Raptor Ventures", "401 W 14th St", "4th floor", "New York", "Investors", [ "http://raptorventures.com", null ], false, [ null, null ], null ]
, [ 783, "CD069775-7879-4B07-B019-822DE207FC59", 783, 1361568633, "392904", 1361568633, "392904", "{\n}", "Cantora Labs", "59 Franklin Street", "#401", "New York", "Investors", [ "http://www.cantoralabs.com", null ], false, [ null, null ], null ]
, [ 789, "2A39AA58-1261-4F34-9129-0ABA772764BC", 789, 1361568633, "392904", 1361568633, "392904", "{\n}", "Accelerator Ventures", "430 West 14 Street", "Suite 403", "New York", "Investors", [ "http://www.acceleratorventures.com/", null ], false, [ null, null ], "Investments" ]
, [ 808, "DB8E8885-38C9-4E51-80AE-3C3289DB7B61", 808, 1361568633, "392904", 1361568633, "392904", "{\n}", "Time Warner Investments", "One Time Warner Center", null, "New York", "Investors", [ "http://www.timewarnerinvestments.com", null ], false, [ null, null ], null ]
, [ 834, "4FFB7968-6CD6-4B99-B738-F5882466B21C", 834, 1361568633, "392904", 1361568633, "392904", "{\n}", "Gotham Start", "770 Broadway", "7th Floor", "New York", "Investors", [ "http://www.gothamstart.com", null ], false, [ null, null ], "New York is the greatest city in the world and the new capital for entrepreneurship. We love NYC startups." ]
, [ 853, "E266AAF1-BE8C-4DA8-BFE8-394CB12A484B", 853, 1361568633, "392904", 1361568633, "392904", "{\n}", "AOL Ventures", "670 Broadway", "4th Floor", "New York", "Investors", [ "http://www.aolventures.com", null ], false, [ null, null ], null ]
, [ 909, "AFA68CC6-4726-4BC6-A10D-81D7C9FC6859", 909, 1361568633, "392904", 1361568633, "392904", "{\n}", "Progress Ventures", "245 Park Avenue", "27th Floor", "New York", "Investors", [ "http://www.progresspartners.com", null ], false, [ null, null ], "The center of innovation on the east coast, and the hub of advertising. A budding, vibrant community of entrepreneurs and the largest ecosystem of media and ad companies anywhere." ]
, [ 966, "F1E2BDF9-306A-4DFB-BE71-C0CC4B262702", 966, 1361568633, "392904", 1361568633, "392904", "{\n}", "StarVest Partners", "750 Lexington Avenue", "15th Floor", "New York", "Investors", [ "http://www.starvestpartners.com/", null ], false, [ null, null ], "Our New York City presence is vital because our many enterprise customers are in NY and the region. This is the thought leadership and home for Financial Services, Advertising, Media, Health Care and more. Plus...we - the StarVest team - love living in the greatest, most vibrant City." ]
, [ 989, "33053DC7-1049-4407-A8DF-3DF807E854AC", 989, 1361568633, "392904", 1361568633, "392904", "{\n}", "KAYWEB Angels", "1330 Avenue of the Americas", "23rd Floor", "New York", "Investors", [ "http://www.kaywebangels.com", null ], false, [ null, null ], "We provide development services to web/mobile startups in exchange for equity.\n\nNew York is the city of ideas, but does not have enough developers. We want to be New York\'s angel developers!" ]
, [ 1011, "8F58D333-21B1-4FA0-8934-FCD5C08D6C57", 1011, 1361568633, "392904", 1361568633, "392904", "{\n}", "Zelkova Ventuers", "667 Madison Avenue", "20th Fl", "New York", "Investors", [ "http://www.zelkovavc.com", null ], false, [ null, null ], "In 2007 when we launched NYC was a much harder place to launch a company... we saw an opportunity to help fix that... so far we have accomplished our goals!" ]
, [ 1028, "001BD122-01C6-4DC1-92F6-2A3601244EB4", 1028, 1361568633, "392904", 1361568633, "392904", "{\n}", "Canaan Partners", "95 Ffith Avenue", "5th Floor", "New York", "Investors", [ "http://www.canaan.com", null ], false, [ null, null ], null ]
, [ 1029, "8C98B775-1103-495A-A7FA-57B4DE4A71F2", 1029, 1361568633, "392904", 1361568633, "392904", "{\n}", "RTP Ventures", "900 Third Avenue", "25th floor", "New York", "Investors", [ "http://www.rtp.vc", null ], false, [ null, null ], null ]
, [ 1050, "C86742DF-19BB-4517-9B9F-0AB62E3B86F1", 1050, 1361568633, "392904", 1361568633, "392904", "{\n}", "Silicon Badia Ventures", "86 Chambers Street", "704", "New York", "Investors", [ "http://www.siliconbadia.com/", null ], false, [ null, null ], "We love Silicon Alley!" ]
, [ 1058, "2C8D4E3B-33E8-422A-8E8F-730B0C3D69B7", 1058, 1361568633, "392904", 1361568633, "392904", "{\n}", "Flybridge Capital Partners", "578 Broadway", "7th Floor", "New York", "Investors", [ "http://www.flybridge.com", null ], true, [ "http://www.flybridge.com/news_events/news_details.cfm?newsID=97&newsType=flybridge", null ], "Flybridge Capital Partners is an early-stage venture capital firm that invests in exceptional entrepreneurs to build market-leading technology companies. With $560 million under management, the firm is focused on investing in consumer infrastructure and enterprise 2.0 companies. With an office in New York City Flybridge has already invested in several NYC early stage technology companies including 10gen, 33 Across, Brontes Technologies and, Tracx and is actively looking to invest in NYC-based start-ups." ]
, [ 1107, "BEBBAAD0-127D-46C5-866F-1436D1870F1C", 1107, 1361568633, "392904", 1361568633, "392904", "{\n}", "ifridge & Company", "349 5th Avenue", null, "New York", "Investors", [ "http://www.ifridge.com", null ], false, [ null, null ], "We are a team of entrepreneurs helping other entrepreneurs turn great ideas into great businesses. NYC has provided us the opportunity to meet countless innovators who work to change not only the markets in which they operate, but also the world at large." ]
, [ 1113, "4DD733E6-2CCC-414F-A847-A2E40960FB62", 1113, 1361568633, "392904", 1361568633, "392904", "{\n}", "St. James Partners", "57 Mercer Street", "3rd Floor", "New York", "Investors", [ "http://stjamespartners.com/", null ], false, [ null, null ], null ]
, [ 1121, "B89030C9-A608-4524-8339-D43DF28047F1", 1121, 1361568633, "392904", 1361568633, "392904", "{\n}", "MI Ventures LLC", "373 Park Avenue South", "630", "New York", "Investors", [ "http://www.miventuresllc.com", null ], false, [ null, null ], "I have lived in NYC for over 15 years as well as traveled extensively. I don\'t think any other city in the world can match the energy and hunger that it embodies. This wave of tech is about content and business models which makes NYC a great place for startups to hire as well as monetize." ]
, [ 1123, "26168183-3FA6-4454-B2E3-4038B4ED5D21", 1123, 1361568633, "392904", 1361568633, "392904", "{\n}", "Contour Venture Partners", "317 Madison avenue", "Suite 1124", "New York", "Investors", [ "http://www.contourventures.com/", null ], false, [ null, null ], "We invest in local technology companies" ]
, [ 1173, "F8B520D4-E0C5-4EE7-8992-9E838A86B1BB", 1173, 1361568633, "392904", 1361568633, "392904", "{\n}", "Quotidian Ventures", "22 West 21st Street", "8th Floor", "New York", "Investors", [ "http://quotidianventures.com/", null ], false, [ null, null ], "Moved here in 2009 seeing a huge surge in NYC Tech and happy to be here for this transformational time. There is no better place to be today to start a company." ]
, [ 1197, "6EE49AD6-25A9-43BD-ADB5-0CA54D1D5EF1", 1197, 1361568633, "392904", 1361568633, "392904", "{\n}", "i-Hatch Ventures", "584 Broadway", "1103", "New York", "Investors", [ "http://www.i-hatch.com", null ], true, [ null, null ], "Downtown NYC for over 12 years now, cross-section of technology, media, advertising, entertainment, fashion and more." ]
, [ 1222, "6F35432A-1696-4692-A8A8-DAFA01626AD7", 1222, 1361568633, "392904", 1361568633, "392904", "{\n}", "ff Venture Capital", "989 Avenue of the Americas", "Floor 3", "New York", "Investors", [ "http://ffvc.com/", null ], true, [ null, null ], null ]
, [ 1225, "1A9E27BD-CEEA-4F5D-8AD2-1A74E41CC0A2", 1225, 1361568633, "392904", 1361568633, "392904", "{\n}", "K2 Media Labs", "32 East 31st St", "12th Floor", "New York", "Investors", [ "http://www.k2medialabs.com", null ], true, [ "http://www.k2medialabs.com/careers/", null ], "K2 is a new model for early stage investing. We build, fund and grow innovative companies." ]
, [ 1259, "63630ECA-2946-4E81-B998-F57F02BDC0B6", 1259, 1361568633, "392904", 1361568633, "392904", "{\n}", "Silas Capital", "45 Rockefeller Plaza", null, "New York", "Investors", [ "http://www.silascapital.com/", null ], false, [ null, null ], null ]
, [ 1278, "5886D06C-0EB1-4F23-B98D-54E4C4A3EA8C", 1278, 1361568633, "392904", 1361568633, "392904", "{\n}", "Collaborative Fund", "136 West 21st Street", null, "New York", "Investors", [ "http://collaborativefund.com", null ], false, [ null, null ], null ]
, [ 1289, "288D3288-413B-40D0-9D3C-39206AAD34FE", 1289, 1361568633, "392904", 1361568633, "392904", "{\n}", "Rangefinder Ventures, LLC", "355 East 73rd Street", null, "New York", "Investors", [ "http://www.rangefinderventures.com", null ], false, [ null, null ], null ]
, [ 1306, "35EDC9F8-6F97-410B-9B95-84D7E0127522", 1306, 1361568633, "392904", 1361568633, "392904", "{\n}", "Landmark Ventures", "11 East 26th Street", "1600", "New York", "Investors", [ "http://www.landmarkventures.com", null ], false, [ null, null ], "Because its the center of the world" ]
, [ 1308, "7852ADF5-C2C8-40B8-B4A6-A44E31B6D9D4", 1308, 1361568633, "392904", 1361568633, "392904", "{\n}", "Women Innovate Mobile (WIM) Accelerator", "833 Broadway ", "5th Floor", "New York", "Investors", [ "http://www.womeninnovatemobile.com", null ], false, [ null, null ], "NYC\'s vibrant tech scene. NYC is also where WIM\'s founders reside and run their other ventures (JumpThru, inSparq, Women in Wireless)." ]
, [ 1355, "929C624C-8381-4C3E-BD28-87D1764DD133", 1355, 1361568633, "392904", 1361568633, "392904", "{\n}", "Bain Capital Ventures", "632 Broadway", "8", "New York", "Investors", [ "http://www.baincapitalventures.com", null ], false, [ null, null ], null ]
, [ 1393, "E85D85D4-61D0-4821-909D-AEF2E7A6698D", 1393, 1361568633, "392904", 1361568633, "392904", "{\n}", "ER Accelerator", "1500 Broadway", "802", "New York", "Investors", [ "http://eranyc.com", null ], false, [ "http://eranyc.com/jobs/", null ], null ]
, [ 1404, "2BD9E67E-2378-4AEA-AC48-E773033C88C3", 1404, 1361568633, "392904", 1361568633, "392904", "{\n}", "Carthage Capital Group", "590 Madison Avenue", "Floor 21", "New York", "Investors", [ "http://www.carthage.net", null ], false, [ "http://Www.charged.fm/jobs/listing", null ], null ]
, [ 1424, "7B4C1852-0EDC-430F-95D1-1EB41FA97E02", 1424, 1361568633, "392904", 1361568633, "392904", "{\n}", "Maenna & Co.", "349 5th Ave.", "7th Floor", "New York", "Investors", [ "http://www.maennaco.com", null ], false, [ null, null ], null ]
, [ 1475, "C927F047-DDF7-4C4A-B52A-14BFEF22E58E", 1475, 1361568633, "392904", 1361568633, "392904", "{\n}", "BMW i Ventures", "95 Morton St", "7th", "New York", "Investors", [ "http://www.bmw-i-usa.com/en_us/i-ventures/", null ], false, [ null, null ], null ]
, [ 1484, "D2ECCB90-8305-41DE-BB1E-176AE5C4D54F", 1484, 1361568633, "392904", 1361568633, "392904", "{\n}", "DEV (Digital Entertainment Ventures)", "1501 Broadway", "25th Floor", "New York", "Investors", [ "http://devny.vc", null ], false, [ null, null ], null ]
, [ 1530, "D4A90285-2258-4395-92C8-F81E6760D04C", 1530, 1361568633, "392904", 1361568633, "392904", "{\n}", "Comcast Ventures", "5 Times Square", "Floor #9", "New York", "Investors", [ "http://www.comcastventures.com", null ], false, [ null, null ], null ]
, [ 1553, "DC6498B0-C1BA-4A0C-A2EA-F27461A8B321", 1553, 1361568633, "392904", 1361568633, "392904", "{\n}", "Fantasia Partners, LLC", "One Little West Twelfth Street", "3rd floor", "New York", "Investors", [ "http://www.theshowt.com", null ], false, [ null, null ], "New York is critical to the technology industry with vast resources in tech, finance and talent. We are here because this is where the next generation of entrepreneurs play." ]
, [ 1557, "6EDF8E5C-FEB9-47D7-AF92-3CD43FAC4D83", 1557, 1361568633, "392904", 1361568633, "392904", "{\n}", "Revel Partners", "24 West 40th Street", "7th Floor", "New York", "Investors", [ "http://www.revelpartners.com", null ], false, [ null, null ], null ]
, [ 1571, "6C3D2CBA-53EC-4CDE-97B4-B5D6A46A695C", 1571, 1361568633, "392904", 1361568633, "392904", "{\n}", "Ingk Labs", "101 Fifth Avenue", "8th Floor", "New York", "Investors", [ "http://ingk.com", null ], true, [ "http://ingk.com/jobs", null ], null ]
, [ 1586, "F96EF54E-B780-4EA4-A393-CB8905823030", 1586, 1361568633, "392904", 1361568633, "392904", "{\n}", "IA Ventures", "156 FIfth Avenue", "1119", "New York", "Investors", [ "http://iaventures.com", null ], false, [ null, null ], "IA Ventures is an early stage venture capital firm that invests in companies focused on harnessing the power of data. NYC is the undisputed center of the data ecosystem, and we\'re proud to be a part of it." ]
, [ 1595, "847A6A53-3C00-4354-B891-8BF2B465621F", 1595, 1361568633, "392904", 1361568633, "392904", "{\n}", "General Atlantic", "55 East 52nd Street", "32", "New York", "Investors", [ "http://www.generalatlantic.com", null ], false, [ null, null ], "NYC is the firm\'s global headquarters." ]
, [ 1641, "9F62D0C4-3427-420C-9834-01BBC5708D62", 1641, 1361568633, "392904", 1361568633, "392904", "{\n}", "Hillcrest Venture Partners", "145th St.", null, "New York", "Investors", [ "http://hillcrestvp.com", null ], false, [ null, null ], null ]
, [ 1709, "96169B68-6A8D-4AFB-9360-7D9A00334522", 1709, 1361568633, "392904", 1361568633, "392904", "{\n}", "Golden Seeds", "750 Lexington Ave", "6th", "New York", "Investors", [ "http://www.goldenseeds.com", null ], false, [ null, null ], "New York is home to many of our clients. Many of us had careers on Wall St or in the media industry before Golden Seeds." ]
, [ 1742, "D80A97D1-DE02-4932-9121-79E36ECDA1B3", 1742, 1361568633, "392904", 1361568633, "392904", "{\n}", "Vedanta Capital", "540 Madison Avenue", "38th Floor", "New York", "Investors", [ "http://www.vedantacapital.com", null ], false, [ null, null ], "Our team has been based in the city for over 30 years (under different umbrellas). We try to add value by introducing our portfolio companies to customers, and many are in the NYC." ]
, [ 1845, "39DCD4FC-77D9-4F2C-8BC4-853102A3A416", 1845, 1361568633, "392904", 1361568633, "392904", "{\n}", "DFJ Gotham", "132 West 31st Street ", "1102", "New York", "Investors", [ "http://www.dfjgotham.com", null ], false, [ null, null ], "To Invest in NYC technology companies" ]
, [ 1904, "79312DAB-4E81-4BC6-B42B-A37FE8CA5AA4", 1904, 1361568633, "392904", 1361568633, "392904", "{\n}", "Metamorphic Ventures", "257 Park Avenue South", "5", "New York", "Investors", [ "http://metamorphic.vc/", null ], false, [ null, null ], null ]
, [ 1936, "603CF874-580F-4B4E-9840-4C3D9A6441AE", 1936, 1361568633, "392904", 1361568633, "392904", "{\n}", "500 Startups", "419 Park Avenue South", "2nd Floor", "New York", "Investors", [ "http://www.500.co", null ], true, [ null, null ], "we are the most active seed stage VC fund in the world. We have made 37 investments in NYC based startups in the past three years." ]
 ]
}')

binding.pry

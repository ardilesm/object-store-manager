namespace asml.os.manager;

using {managed} from '@sap/cds/common';

entity Blob {
  key id    : String(500);
  container : String(100);
  versionId : String;
  filename  : String;
  filesize: Integer; 
  contentType: String;
  status    : String;
  scannedAt : DateTime;
  scanResult: String(1000);
  classification: Classification;
}

entity Subaccount {
  name: String;
  objectstore: String;
}

entity Job: managed {
  key id: String;
  result:String;
}

type Classification: String enum {
  Public = 'p';
  Confidential = 'c';
  CompanySecret = 'cs';
  TopSecret ='ts';
}

using asml.os.manager as my from '../db/schema';

service BlobService {
    entity Blob as projection on my.Blob;
}

pragma solidity ^0.5.0;

contract DStorage {
  // Name
  string public name = 'DStorage';
  // Number of files
  // Mapping fileId=>Struct

    //key-value store
    // KEY: 1 => VALUE: HDsdf8asdHJDKFhhHL83JhdkalskjdHjhgHGJhg87

    //create a counter cache
    uint public fileCount = 0;

  mapping( uint => File ) public files;

  // Struct

  struct File {

    uint fileId;
    string fileHash;
    uint fileSize;
    string fileType;
    string fileName;
    string fileDescription;
    uint uploadTime;
    address payable uploader;

  }

  event FileUploaded (

    uint fileId,
    string fileHash,
    uint fileSize,
    string fileType,
    string fileName,
    string fileDescription,
    uint uploadTime,
    address payable uploader

    );


  // Event

  constructor() public {
  }

  // Upload File function

  function uploadFile(string memory _fileHash, uint _fileSize, string memory _fileType, string memory _fileName, string memory _fileDescription) public {

    //makes sure something is true before continuing execution

    // Make sure the file hash exists

    // Make sure file type exists

    // Make sure file description exists

    // Make sure file fileName exists

    // Make sure file size is more than 0


    // Make sure uploader address exists
    require(bytes(_fileHash).length > 0);
    require(bytes(_fileType).length > 0);
    require(bytes(_fileDescription).length > 0);
    require(bytes(_fileName).length > 0);
    require(msg.sender != address(0));
    require(_fileSize > 0);

    // Increment file id

    fileCount++;

    // Add File to the contract

    files[fileCount] = File(fileCount, _fileHash, _fileSize, _fileType, _fileName, _fileDescription, now, msg.sender);

    // Trigger an event


    emit FileUploaded(fileCount, _fileHash, _fileSize, _fileType, _fileName, _fileDescription, now, msg.sender);



  }


}

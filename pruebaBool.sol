pragma solidity ^0.5.0;

contract simplestorage {
   bool  storedData;
     
   event DataStored (
      bool data
   );

   constructor(bool  initVal) public {
      storedData = initVal;
   }

   function set(bool x) public returns (bool  value) {
      storedData = x;

      emit DataStored(x);

      return storedData;
   }

   function get() public view returns (bool retVal) {
      return storedData;
   }

   function query() public view returns (bool retVal) {
      return storedData;
   }
}

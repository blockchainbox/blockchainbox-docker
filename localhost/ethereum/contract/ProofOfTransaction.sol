pragma solidity ^0.4.6;

contract ProofOfTransaction {
  bytes32 public dataHash;

  mapping (string => bytes32) dataHashMap;

  // 寫入時記錄誰將資料存入
  event setDataHashEvent(address from, string txHash, bytes32 dataHash, uint time);
  // 當有人查詢 dataHash 的時候紀錄下來
  event getDataHashEvent(address from, string txHash, bytes32 dataHash, uint time);
  
  function setData(string txHash, string data) {
    // 將資料透過 SHA3 運算後存入 dataArray 中
    dataHash = sha3(data);
    dataHashMap[txHash] = dataHash;
    
    // 可以透過 send event 讓 web3.js 去接收，有這個就可以直接把 isExist 忽略
    setDataHashEvent(msg.sender, txHash, dataHash, now);
  }
  
  function getDataHash(string txHash) returns (bytes32) {
    // 透過 txHash 取得儲存的 dataHash
    dataHash = dataHashMap[txHash];

    getDataHashEvent(msg.sender, txHash, dataHash, now);
    if (dataHash == 0) {
      return "";
    } else {
      return dataHash;
    } 
  }
}
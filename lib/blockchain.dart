import 'package:scilla_flutter/main.dart';

/// Returns a paginated list of up to 10 Directory Service (DS) blocks and their block hashes for a specified page. 
/// 
/// The maxPages variable that specifies the maximum number of pages available is also returned.
dynamic getDSBlockListing(int dsBlockPage) async {
  return await zilliqa.sendRequest('DSBlockListing', dsBlockPage);
}

/// Returns the current network statistics for the specified network.
/// 
/// NOTE: CHAIN_ID from 2 to 9 are reserved for Zilliqa Core use.
dynamic getBlockchainInfo() async {
  return await zilliqa.sendRequest('GetBlockchainInfo');
}

/// Returns the current number of DS blocks in the network. 
/// 
/// This is represented as a [String].

dynamic getCurrentDSEpoch() async {
  return await zilliqa.sendRequest('GetCurrentDSEpoch');
}

/// Returns the current TX block number of the network.
/// 
/// This is represented as a [String].
dynamic getCurrentMiniEpoch() async {
  return await zilliqa.sendRequest('GetCurrentMiniEpoch');
}

/// Returns the details of a specified Directory Service block.
dynamic getDsBlock(int dsBlockNumber) async {
  return await zilliqa.sendRequest('GetDsBlock', dsBlockNumber);
}

/// Returns the current Directory Service blockrate per second.
dynamic getDSBlockRate() async {
  return await zilliqa.sendRequest('GetDSBlockRate');
}

/// Returns the details of the most recent Directory Service block.
dynamic getLatestDsBlock() async {
  return await zilliqa.sendRequest('GetLatestDsBlock');
}

/// Returns the details of the most recent Transaction block.
dynamic getLatestTxBlock() async {
  return await zilliqa.sendRequest('GetLatestTxBlock');
}

/// Returns the mining nodes (i.e., the members of the DS committee and shards) at the specified DS block.
dynamic getMinerInfo(int dsBlockNumber) async {
  return await zilliqa.sendRequest('GetMinerInfo', dsBlockNumber);
}

/// Returns the CHAIN_ID of the specified network. 
/// 
/// This is represented as a [String].
/// Chain(s)          CHAIN_ID
/// zilliqa mainnet   1
/// developer testnet 333
/// isolated server   222

dynamic getNetworkId() async {
  return await zilliqa.sendRequest('GetNetworkId');
}

/// Returns the current number of validated Directory Service blocks in the network.
/// 
/// This is represented as a [String]. 
dynamic getNumDSBlocks() async {
  return await zilliqa.sendRequest('GetNumDSBlocks');
}

/// Returns the current number of validated Transactions in the network.
/// 
/// This is represented as a [String]. 
dynamic getNumTransactions() async {
  return await zilliqa.sendRequest('GetNumTransactions');
}

/// Returns the current number of Transaction blocks in the network.
/// 
/// This is represented as a [String]. 
dynamic getNumTxBlocks() async {
  return await zilliqa.sendRequest('GetNumTxBlocks');
}

/// Returns the minimum shard difficulty of the previous block. 
/// 
/// This is represented as an [int].
dynamic getPrevDifficulty() async {
  return await zilliqa.sendRequest('GetPrevDifficulty');
}

/// Returns the total supply (ZIL) of coins in the network.
/// 
/// This is represented as an [String].
dynamic getTotalCoinSupply() async {
  return await zilliqa.sendRequest('GetTotalCoinSupply');
}

/// Returns the current Transaction rate per second (TPS) of the network.
/// 
/// This is represented as an [double].
dynamic getTransactionRate() async {
  return await zilliqa.sendRequest('GetTransactionRate');
}

/// Returns the details of a specified Transaction block.
dynamic getTxBlock(int blockNum) async {
  return await zilliqa.sendRequest('GetTxBlock', blockNum);
}

/// Returns the current Transaction blockrate per second for the network.
dynamic getTxBlockRate() async {
  return await zilliqa.sendRequest('GetTxBlockRate');
}

/// Returns a paginated list of up to 10 Transaction blocks and their block hashes for a specified page. 
/// 
/// The maxPages variable that specifies the maximum number of pages available is also returned.
dynamic getTxBlockListing(int txBlockPage) async {
  return await zilliqa.sendRequest('TxBlockListing', txBlockPage);
}
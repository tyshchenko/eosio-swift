//
//  RequestModels.swift
//  EosioSwift
//
//  Created by Steve McCoole on 2/20/19.
//  Copyright © 2018-2019 block.one.
//

import Foundation


public struct EosioRpcTableRowsRequest: Codable {
    var scope: String = "inita"
    var code: String = "currency"
    var table: String = "account"
    var tableKey: String?
    var json : Bool
    var lowerBound : String?
    var upperBound: String?
    var limit : Int = 10
    var indexPosition : String = "1"
    var keyType: String?
    var encodeType : String = "dec"
    
    enum CodingKeys: String, CodingKey {
        case scope
        case code
        case table
        case tableKey = "table_key"
        case json
        case lowerBound = "lower_bound"
        case upperBound = "upper_bound"
        case limit
        case indexPosition = "index_position"
        case keyType = "key_type"
        case encodeType = "encode_type"
    }
}

public struct EosioRpcCurrencyBalanceRequest: Codable {
    var code: String
    var account: String
    var symbol: String
}

public struct EosioRpcRequiredKeysRequest: Codable {
    var transactionJson: String
    var availableKeys: [String]
    
    init(availableKeys: [String], transactionJson: String) {
        self.availableKeys = availableKeys
        self.transactionJson = transactionJson
    }
    
    enum CodingKeys: String, CodingKey {
        case transactionJson = "transaction"
        case availableKeys = "available_keys"
    }
}

public struct EosioRpcProducersRequest: Codable {
    var limit: String
    var lowerBound: String
    var json: Bool
    
    enum CodingKeys: String, CodingKey {
        case limit
        case lowerBound = "lower_bound"
        case json
    }
}

public struct EosioRpcHistoryActionsRequest: Codable {
    var position: Int32 = -1
    var offset: Int32 = -20
    var accountName: EosioName
}


public struct EosioRpcPushTransactionRequest: Codable {
    var signatures = [String]()
    var compression = 0
    var packedContextFreeData = ""
    var packedTrx = ""
}

public struct EosioBlockRequest: Codable {
    var block_num_or_id: UInt64 = 0
}

public struct EosioRawAbiRequest: Codable {
    var account: EosioName
}

public struct EosioBlockHeaderStateRequest: Codable {
    var block_num_or_id: String = ""
}

public struct EosioAccountRequest: Codable {
    var account: EosioName
}

public struct EosioCurrencyStatsRequest: Codable {
    var code: String = ""
    var symbol: String = ""
}

public struct EosioHistoryTransactionRequest: Codable {
    var transactionId: String = ""
}

public struct EosioHistoryKeyAccountsRequest: Codable {
    var publicKey: String = ""
}

public struct EosioHistoryControlledAccountsRequest: Codable {
    var controllingAccount: EosioName
}

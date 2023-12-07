//
//  About.swift
//  FootballersApi
//
//  Created by Tayami Rai on 07/12/2023.
//

import Foundation

struct About: Decodable{
    var filters: [Filter]
    var resultSet: Record
    var matches: [Fixtures]
    
}

struct Filter: Decodable{
    var competitions: String
    var permissions: String
    var status: [String]
    var limit: Int
}

struct Record: Decodable{
    var count: Int
    var competitions: String
    var first: String
    var last: String
    var played: Int
    var wins: Int
    var draws: Int
    var losses: Int
}

struct Fixtures: Decodable{
    var area: [Area]
    var competition: [Competition]
    var season: [Season]
    var id: Int
    var utcDate: String
    var status: String
    var matchDay: Int
    var stage: String
    var lastUpdated: String
    var homeTeam: [Home]
    var awayTeam: [Away]

}

struct Area: Decodable{
    var id: Int
    var name: String
    var code: String
    var flag: String
}

struct Competition: Decodable{
    var id: Int
    var name: String
    var code: String
    var type: String
    var emblem: String
}

struct Season: Decodable{
    var id: Int
    var startDate: String
    var endDate: String
    var currentMatchDay: Int
}

struct Home: Decodable{
    var id: Int
    var name: String
    var shortName: String
    var tla: String
    var crest: String
}

struct Away: Decodable{
    var id: Int
    var name: String
    var shortName: String
    var tla: String
    var crest: String
}



//
//  DataService.swift
//  FootballersApi
//
//  Created by Tayami Rai on 07/12/2023.
//

import Foundation

struct DataService{
    
    let apiKey = Bundle.main.infoDictionary?["API_KEY"] as? String
    
    func getChampionsLeagueMatches() async {
        
        guard apiKey != nil else {
            return
        }
        
        if let url = URL(string: "https://api.football-data.org/v4/competitions/CL/matches"){
            
            var request = URLRequest(url: url)
            request.addValue("\(apiKey ?? "null")", forHTTPHeaderField: "X-Auth-Token")
            
            do{
                let (data, response) = try await URLSession.shared.data(for: request)
                
                print(data)
                print(response)
            }
            catch{
                print(error)
            }
            
        }
        
    }
    
    
}

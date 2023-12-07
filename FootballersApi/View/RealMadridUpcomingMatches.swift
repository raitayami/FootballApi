//
//  RealMadridUpcomingMatches.swift
//  FootballersApi
//
//  Created by Tayami Rai on 07/12/2023.
//

import SwiftUI

struct RealMadridUpcomingMatches: View {
    var body: some View {
        VStack{
            Text("Hi")
        }
        .task{
        await DataService().upcomingRealMadridMatches()
        }
    }
        
}

#Preview {
    RealMadridUpcomingMatches()
}

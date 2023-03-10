//
//  EpisodeDetailInfo.swift
//  RickAndMorty
//
//  Created by Doni on 3/6/23.
//

import SwiftUI

struct EpisodeDetailInfoView: View {
    
    @State var episode: Episode
    
    var body: some View {
        VStack {
            VStack(spacing: 10) {
                HStack {
                    VStack(alignment: .leading) {
                        Text(episode.name)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .fontDesign(.rounded)
                        Text(episode.episode)
                            .font(.headline)
                            .fontDesign(.rounded)
                    }
                    Spacer()
                    
                    VStack(alignment: .trailing) {
                        Text("Air Date")
                            .font(.title)
                            .fontWeight(.heavy)
                            .fontDesign(.rounded)
                        Text(episode.airDate)
                    }
                    
                }
                .padding()
            }
        }
    }
}

struct EpisodeDetailInfoView_Previews: PreviewProvider {
    static var previews: some View {
        EpisodeDetailInfoView(episode: episodeDummyData)
    }
}

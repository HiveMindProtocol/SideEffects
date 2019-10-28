//
//  ThreadRow.swift
//  SideEffect
//
//  Created by Kevin Tran on 10/23/19.
//  Copyright © 2019 Kevin Tran. All rights reserved.
//

import SwiftUI

struct ThreadRow: View {
    var thread: Thread
    var body: some View {
        HStack {
            Text(verbatim: thread.question_title)
        }
        .frame(height: 100)
    }
}

struct ThreadRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ThreadRow(thread: NetworkManager().threadData[0])
            ThreadRow(thread: NetworkManager().threadData[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}

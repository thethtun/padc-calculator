//
//  TempLayout.swift
//  padc-calculator-swift-ui
//
//  Created by Thet Htun on 5/8/20.
//  Copyright © 2020 thethtun. All rights reserved.
//

import SwiftUI

struct TempLayout: View {
    
    // Using the '@State' property wrapper we can define pieces
    // of state that are local (private) to the current view:
    @State private var quantity = 1
    
    var body: some View {
        VStack {
            EventHeader()
            ImagePlaceholder()
                .layoutPriority(-1)
                .frame(minHeight: 100)
            Text(makeDescription())
            Spacer()
            EventInfoList().fixedSize(horizontal: false, vertical: true)
        }.padding()
    }
}


struct ImagePlaceholder: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10).stroke()
            Text("Image placeholder")
        }
    }
}

private extension TempLayout {
    func makeDescription() -> String {
        String(repeating: "This is a description ", count: 100)
    }
}

extension View {
    func syncingHeightIfLarger(than height: Binding<CGFloat?>) -> some View {
        background(GeometryReader { proxy in
            // We have to attach our preference assignment to
            // some form of view, so we just use a clear color
            // here to make that view completely transparent:
            Color.clear.preference(
                key: HeightPreferenceKey.self,
                value: proxy.size.height
            )
        })
        .onPreferenceChange(HeightPreferenceKey.self) {
            height.wrappedValue = max(height.wrappedValue ?? 0, $0)
        }
    }
}

private struct HeightPreferenceKey: PreferenceKey {
    static let defaultValue: CGFloat = 0

    static func reduce(value: inout CGFloat,
                       nextValue: () -> CGFloat) {
        value = nextValue()
    }
}

struct HeightSyncedRow<Background: View, Content: View>: View {
    private let background: Background
    private let content: Content
    @State private var childHeight: CGFloat?

    init(background: Background,
         @ViewBuilder content: () -> Content) {
        self.background = background
        self.content = content()
    }

    var body: some View {
        HStack {
            content.syncingHeightIfLarger(than: $childHeight)
                   .frame(height: childHeight)
                   .background(background)
        }
    }
}

struct EventInfoList: View {
    var body: some View {
        HeightSyncedRow(background: Color.secondary.cornerRadius(10))  {
            EventInfoBadge(
                iconName: "video.circle.fill",
                text: "Video call available"
            )
            EventInfoBadge(
                iconName: "doc.text.fill",
                text: "Files are attached"
            )
            EventInfoBadge(
                iconName: "person.crop.circle.badge.plus",
                text: "Invites enabled, 5 people maximum"
            )
        }
    }
}

struct EventHeader: View {
    var body: some View {
        HStack(spacing: 15) {
            CalendarView()
            VStack(alignment: .leading) {
                Text("Event title").font(.title)
                Text("Location")
            }
            Spacer()
        }
    }
}

struct CalendarView: View {
    var eventIsVerified = true
    var body: some View {
        Image(systemName: "calendar")
            .resizable()
            .frame(width: 50, height: 50)
            .padding()
            .background(Color.red)
            .cornerRadius(10)
            .foregroundColor(.white)
            .addVerifiedBadge(eventIsVerified)
    }
}

extension View {
    func addVerifiedBadge(_ isVerified: Bool) -> some View {
        ZStack(alignment: .topTrailing) {
            self

            if isVerified {
                Image(systemName: "checkmark.circle.fill")
                    .offset(x: 3, y: -3)
            }
        }
    }
}

struct EventInfoBadge: View {
    var iconName: String
    var text: String

    var body: some View {
        VStack {
            Image(systemName: iconName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 25, height: 25)
            Text(text)
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.center)
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 5)
    }
}

struct TempLayout_Previews: PreviewProvider {
    static var previews: some View {
        TempLayout()
    }
}

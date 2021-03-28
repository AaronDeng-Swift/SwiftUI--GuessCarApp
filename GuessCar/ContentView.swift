//
//  ContentView.swift
//  GuessCar
//
//  Created by Aaron on 2021/3/28.
//

// Image:   .aspectRatio(contentMode: .fit)
//          .imageScale(.medium)

// Color:   LinearGradient(gradient: Gradient(colors: [.white, .blue]), startPoint: .top, endPoint: .bottom)



import SwiftUI

struct ContentView: View {
    
    @State var carItems = carData.shuffled()
    @State var showAlert: Bool = false
    @State var alertMessage: String = ""
    @State var correctCount = Int.random(in: 0 ..< 3)
    @State var title: String = ""
    @State var scoreNumber: Int = 0
    
    var body: some View {
        ZStack {
            VStack(spacing: 30) {
                Text("请选择车名称对应的车标")
                    .font(.headline)
                Text("\(carItems[correctCount].ChineseName)")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.blue)
                    .animation(.easeInOut(duration: 0.5))
                
                ForEach (0 ..< 3) { number in
                    
                    Button(action: {
                        self.showAlert.toggle()
                        showTitle(number: number)
                    }) {
                        Image("\(carItems[number].pictureName)")
                            .resizable()
                            .renderingMode(.original)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 240, height: 140)
                    }
                    .alert(isPresented: $showAlert) {
                        Alert(title: Text(title), message: Text(alertMessage), dismissButton: .default(Text("Continue")) {
                            continueToNext()
                        })
                    }
                }
                Text("Now your score is: \(scoreNumber)")
                    .foregroundColor(.purple)
                    .padding(.top, 40)
            }
        }
    }
    
    func showTitle(number: Int) -> Void {
        if number == correctCount {
            title = "Correct"
            alertMessage = "Get 1 score."
            scoreNumber += 1
        } else {
            title = "Wrong"
            alertMessage = "Lose 1 score. Picture \(correctCount+1) is correct."
            scoreNumber -= 1
        }
    }
    
    func continueToNext() -> Void {
        carItems.shuffle()
        correctCount = Int.random(in: 0 ..< 3)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

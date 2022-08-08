//
//  QuestionView.swift
//  RichtlijnBetaVersion
//
//  Created by RHC0DE
//

import SwiftUI

struct QuestionView: View {
    
    // Number of question
    @State var i : Int = 0
        
    var body: some View {
        
        ZStack {
            
            VStack {
                

                
                // Name of the Question
                if(self.i < myQuestions.count) {
                    
                    HStack {
                        

                        NavigationLink(destination: StartView().navigationBarHidden(true)) {

                            LeftArrowBtn()

                            Spacer()

                        }
                        
                        Spacer()
                        
                    }.padding(.leading)
                    
                    Text(myQuestions[self.i].title!)
                        .font(.system(size: 22, weight: .semibold))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.primary)
                        .padding()
                    
                    Divider()
                    
                    Text(myQuestions[self.i].question!)
                        .font(.system(size: 15, weight: .semibold))
                        .lineLimit(10)
                        .foregroundColor(.secondary)
                        .multilineTextAlignment(.leading)
                        .padding()
                    
                    Spacer()
                    
                    Questionmark()

                    Spacer()

                    
                    HStack {
                        
                        VStack{
                            
                            NavigationLink(destination: RichtlijnDetailView(selectedRichtlijn: richtlijnenList[self.i] ).navigationBarHidden(true)) {
                                
                                upBtn(btnTitle: myQuestions[self.i].answer[0])
                                
                            }
                            
                            
                        }.padding()
                        
                        
                        VStack{
                            
                            Button(action: {
                                nextQuestion()
                            }, label: {
                                downBtn(btnTitle: myQuestions[self.i].answer[1])
                                
                                
                                
                            })

                            
                        }.padding()
                        
                    }.padding()
                    
                } else {
                    HStack {
                        

                        NavigationLink(destination: StartView().navigationBarHidden(true)) {

                            LeftArrowBtn()

                            Spacer()

                        }
                        
                        Spacer()
                        
                    }.padding(.leading)
                    
                    SamenView()
                }
                
                
            }.padding()
            
            
        }
        
    }
    
    func nextQuestion() {
        self.i = self.i + 1
        
    }
    
    func previousQuestion() {
        self.i = self.i - 1

    }
    
}

 
 struct backBtn: View {
         
     @State var btnTitle: String
 
     var body: some View {
         
     Image(systemName: "chevron.left")
         .font(.title2)
         .foregroundColor(.primary)
         .padding()
         
     }
 }
 

 struct upBtn: View {
         
     @State var btnTitle: String
 
     var body: some View {
         
         HStack{
             Text("Ja")
                 .fontWeight(.bold)
                 .padding()
           
             Image(systemName: btnTitle)
                 .frame(width: 20, height: 2)
                 .padding()
                 .foregroundColor(.green)
         
         }
         .frame(width: 150, height: 50)
         .background((Color(Colors.lightBlue)))
         .foregroundColor(Color.black)
         .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
         
     }
 }
 
 struct downBtn: View {
         
     @State var btnTitle: String
 
     var body: some View {
         
         HStack{
             Text("Nee")
                 .fontWeight(.bold)
                 .padding()
           
             Image(systemName: btnTitle)
                 .frame(width: 20, height: 2)
                 .padding()
                 .foregroundColor(.red)
         
         }
         .frame(width: 150, height: 50)
         .background((Color(Colors.lightBlue)))
         .foregroundColor(Color.black)
         .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
         
     }
 }
 

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}

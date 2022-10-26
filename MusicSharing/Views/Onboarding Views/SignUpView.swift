//
//  SignUpView.swift
//  MusicSharing
//
//  Created by Sean P. Meek on 10/20/22.
//

import SwiftUI

struct SignUpView: View {
    // 0 = get started view
    // 1 is enter password and email
    // 2 is photo
    // 3 is age name and username
    // 4 is public or private
    // 5 is connect straming
    @State private var onboardingState: Int = 0
    @State private var name: String = ""
    @State private var username: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirm: String = ""
    @State private var isPublic: Bool = true
    @State private var birthday: Date = Date()
    @State private var bio: String = ""
    @FocusState private var focusField: FocusField?
    @State private var startingDate: Date = Calendar.current.date(from: DateComponents(year: 1930)) ?? Date()
    func endDate() -> Date {
        var dc = DateComponents()
        dc.year = -13
        let newDate = Calendar.current.date(byAdding: dc, to: Date()) ?? Date()
        return newDate
    }
    @State private var goingBack: Bool = false
    
    let transition: AnyTransition = .asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading))
    
    let transition2: AnyTransition = .asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .trailing))
    
    enum FocusField {
        case email, password, confirm, name, username, bio
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                switch onboardingState {
                case 0:
                    WelcomeView
                        .transition(goingBack ? transition2 : transition)
                case 1:
                    createAcc
                        .transition(goingBack ? transition2 : transition)
                case 2:
                    photoView
                        .transition(goingBack ? transition2 : transition)
                case 3:
                    infoView
                        .transition(goingBack ? transition2 : transition)
                case 4:
                    privacyView
                        .transition(goingBack ? transition2 : transition)
                case 5:
                    Text("hi")
                        .transition(goingBack ? transition2 : transition)
                default:
                    WelcomeView
                        .transition(goingBack ? transition2 : transition)
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        withAnimation(.spring()) {
                            goingBack = true
                            
                            onboardingState -= 1
                        }
                    } label: {
                        Image(systemName: "arrow.backward")
                            .foregroundColor(.primary)
                    }
                }
                
                ToolbarItem {
                    NavigationLink(destination: SignInView()) {
                        Text("Sign in")
                    }
                }
            }
        }
    }
}

extension SignUpView {
    var WelcomeView: some View {
        VStack(spacing: 15) {
            Spacer()
            
            //Add logo
            Image(systemName: "music.note.tv.fill")
                .resizable()
                .scaledToFit()
                .frame(height: 200)
                .foregroundColor(.primary)
            
            Text("Share, Find and Create moments with music!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.primary)
                .multilineTextAlignment(.center)
            
            Text("The best place to share the music you love with friends, find new songs and meet new people.")
                .foregroundColor(.secondary)
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            Spacer()
            
            Spacer()
            
            NavigationLink {
                SignInView()
            } label: {
                LongButtonView(title: "Sign in", fillColor: Color(UIColor.secondarySystemBackground), textColor: .primary)
            }
            
            Button {
                withAnimation(.spring()) {
                    goingBack = false
                    
                    onboardingState += 1
                }
            } label: {
                LongButtonView(title: "Create account", fillColor: .blue, textColor: .white)
            }
        }
        .navigationBarHidden(true)
        .padding()
    }
    
    var createAcc: some View {
        VStack(spacing: 15) {
            Spacer()
            
            Text("Email and Password")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.primary)
            
            TextField("Enter your email", text: $email)
                .submitLabel(.next)
                .padding(15)
                .background(Color(UIColor.secondarySystemBackground))
                .cornerRadius(10)
                .padding(.horizontal)
                .padding(.vertical, 5)
                .keyboardType(.emailAddress)
                .scrollDismissesKeyboard(.interactively)
                .focused($focusField, equals: .email)
                .onSubmit {
                    focusField = .password
                }
            
            SecureField("Create a password", text: $password)
                .submitLabel(.next)
                .padding(15)
                .background(Color(UIColor.secondarySystemBackground))
                .cornerRadius(10)
                .padding(.horizontal)
                .padding(.vertical, 5)
                .scrollDismissesKeyboard(.interactively)
                .focused($focusField, equals: .password)
                .onSubmit {
                    focusField = .confirm
                }
            
            SecureField("Confirm your password", text: $confirm)
                .submitLabel(.go)
                .padding(15)
                .background(Color(UIColor.secondarySystemBackground))
                .cornerRadius(10)
                .padding(.horizontal)
                .padding(.vertical, 5)
                .scrollDismissesKeyboard(.interactively)
                .focused($focusField, equals: .confirm)
                .onSubmit {
                    if !email.isEmpty && !password.isEmpty {
                        if password == confirm {
                            withAnimation(.spring()) {
                                goingBack = false
                                
                                onboardingState += 1
                            }
                        }
                    }
                }
            
            Spacer()
            
            Spacer()
            
            Spacer()
            
            Text("1/5")
                .foregroundColor(.secondary)
                .fontWeight(.medium)
                .padding()
            
            Button {
                if !email.isEmpty && !password.isEmpty {
                    if password == confirm {
                        withAnimation(.spring()) {
                            goingBack = false
                            
                            onboardingState += 1
                        }
                    }
                }
            } label: {
                LongButtonView(title: "Next", fillColor: .blue, textColor: .primary)
            }
        }
        .padding()
    }
    
    var photoView: some View {
        VStack(spacing: 15) {
            Spacer()
            
            Image(systemName: "person.crop.square")
                .font(.system(size: 150))
                .foregroundColor(.primary)
            
            Text("Choose your artwork")
                .foregroundColor(.primary)
                .font(.title)
                .fontWeight(.semibold)
            
            Text("Every great song has great artwork. Pick an image to show who you are.")
                .foregroundColor(.secondary)
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            Spacer()
            
            Spacer()
            
            Text("2/5")
                .foregroundColor(.secondary)
                .fontWeight(.medium)
                .padding()
            
            Button {
                withAnimation(.spring()) {
                    goingBack = false
                    
                    onboardingState += 1
                }
            } label: {
                LongButtonView(title: "Next", fillColor: .blue, textColor: .white)
            }
            .padding()
        }
        .padding()
    }
    
    var infoView: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 15) {
                Spacer()
                
                Text("Account details")
                    .foregroundColor(.primary)
                    .font(.title)
                    .fontWeight(.semibold)
                
                Text("You must be at least 13 years or older.")
                    .foregroundColor(.secondary)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                
                DatePicker("When's your birthday?", selection: $birthday, in: startingDate...endDate(), displayedComponents: .date)
                
                TextField("What is your name?", text: $name)
                    .submitLabel(.next)
                    .padding(15)
                    .background(Color(UIColor.secondarySystemBackground))
                    .cornerRadius(10)
                    .padding(.horizontal)
                    .padding(.vertical, 5)
                    .scrollDismissesKeyboard(.interactively)
                    .focused($focusField, equals: .name)
                    .onSubmit {
                        focusField = .username
                    }
                
                TextField("Pick a username", text: $username)
                    .submitLabel(.next)
                    .padding(15)
                    .background(Color(UIColor.secondarySystemBackground))
                    .cornerRadius(10)
                    .padding(.horizontal)
                    .padding(.vertical, 5)
                    .scrollDismissesKeyboard(.interactively)
                    .focused($focusField, equals: .username)
                    .onSubmit {
                        focusField = .bio
                    }
                
                VStack {
                    TextField("Enter a bio", text: $bio, axis: .vertical)
                        .lineLimit(4)
                        .padding(15)
                        .background(Color(UIColor.secondarySystemBackground))
                        .cornerRadius(10)
                        .padding(.horizontal)
                        .padding(.vertical, 5)
                        .scrollDismissesKeyboard(.interactively)
                        .focused($focusField, equals: .bio)
                    
                    HStack {
                        Spacer()
                        
                        Text("\(bio.count)/100")
                            .foregroundColor(bio.count >= 100 ? .red : .secondary)
                            .fontWeight(.medium)
                            .padding()
                    }
                }
                
                Spacer()
                
                Text("3/5")
                    .foregroundColor(.secondary)
                    .fontWeight(.medium)
                    .padding()
                
                Button {
                    if !name.isEmpty && username.count > 3 && bio.count <= 100 {
                        withAnimation(.spring()) {
                            goingBack = false
                            
                            onboardingState += 1
                        }
                    }
                } label: {
                    LongButtonView(title: "Next", fillColor: .blue, textColor: .white)
                }
                .padding()
            }
            .padding()
        }
    }
    
    var privacyView: some View {
        VStack(spacing: 15) {
            Spacer()
            
            Text("Public or Private")
                .foregroundColor(.primary)
                .font(.title)
                .fontWeight(.semibold)
            
            HStack {
                Spacer()
                
                VStack(spacing: 10) {
                    Text("Public")
                        .foregroundColor(.primary)
                        .fontWeight(.semibold)
                    
                    Image(systemName: "apps.iphone")
                        .font(.system(size: 125))
                        .foregroundColor(.primary)
                    
                    Circle()
                        .foregroundColor(isPublic ? .blue : .secondary)
                        .frame(width: 25, height: 25)
                        .transition(.scale)
                }
                .onTapGesture {
                    withAnimation(.easeInOut) {
                        isPublic = true
                    }
                }
                
                Spacer()
                
                VStack(spacing: 10) {
                    Text("Private")
                        .foregroundColor(.primary)
                        .fontWeight(.semibold)
                    
                    Image(systemName: "lock.iphone")
                        .font(.system(size: 125))
                        .foregroundColor(.primary)
                    
                    Circle()
                        .foregroundColor(isPublic ? .secondary : .blue)
                        .frame(width: 25, height: 25)
                        .transition(.scale)
                }
                .onTapGesture {
                    withAnimation(.easeInOut) {
                        isPublic = false
                    }
                }
                
                Spacer()
            }
            .padding()
            
            Text("Private accounts require that users are following you to view any posts or favorites. This setting can be changed at anytime.")
                .foregroundColor(.secondary)
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            Spacer()
            
            Spacer()
            
            Text("4/5")
                .foregroundColor(.secondary)
                .fontWeight(.medium)
                .padding()
            
            Button {
                withAnimation(.spring()) {
                    goingBack = false
                    
                    onboardingState += 1
                }
            } label: {
                LongButtonView(title: "Next", fillColor: .blue, textColor: .white)
            }
            .padding()
        }
        .padding()
    }
}

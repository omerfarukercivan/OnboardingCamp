class NeonAcademyMember {
    var fullName: String
    var title: String
    var horoscope: String
    var memberLevel: String?
    var homeTown: String
    var age: Int
    var contactInformation: Information
    var mentorLevel: String?
    var team: Team
    
    init(fullName: String, title: String, horoscope: String, memberLevel: String, homeTown: String, age: Int, team: Team, contactInformation: Information) {
        self.fullName = fullName
        self.title = title
        self.horoscope = horoscope
        self.memberLevel = memberLevel
        self.homeTown = homeTown
        self.age = age
        self.team = team
        self.contactInformation = contactInformation
    }
}

class Information {
    var phoneNumber: Int
    var email: String
    
    init(phoneNumber: Int, email: String) {
        self.phoneNumber = phoneNumber
        self.email = email
    }
}

var members = [NeonAcademyMember]()

let info1 = Information(phoneNumber: 05331404138, email: "ofar38@gmail.com")
let member1 = NeonAcademyMember(fullName: "Ömer Faruk Ercivan", title: "iOS Developer Intern", horoscope: "Sagittarius", memberLevel: "A1", homeTown: "Kayseri", age: 21, team: .ios, contactInformation: info1)

let info2 = Information(phoneNumber: 05517034817, email: "baki@gmail.com")
let member2 = NeonAcademyMember(fullName: "Baki Hasan Ertürk", title: "iOS Developer Intern", horoscope: "Cancer", memberLevel: "A1", homeTown: "Malatya", age: 31, team: .ios, contactInformation: info2)

let info3 = Information(phoneNumber: 05335427785, email: "bora@gmail.com")
let member3 = NeonAcademyMember(fullName: "Bora Berberoğlu", title: "iOS Developer Intern", horoscope: "Sagittarius", memberLevel: "A1", homeTown: "Tokat", age: 24, team: .ios, contactInformation: info3)

let info4 = Information(phoneNumber: 05333485706, email: "mustafa@gmail.com")
let member4 = NeonAcademyMember(fullName: "Mustafa Harman", title: "Android Developer Intern", horoscope: "Virgo", memberLevel: "A1", homeTown: "Konya", age: 30, team: .android, contactInformation: info4)

let info5 = Information(phoneNumber: 05399412426, email: "kerem@gmail.com")
let member5 = NeonAcademyMember(fullName: "Keren Caan", title: "iOS Developer Intern", horoscope: "Cancer", memberLevel: "A1", homeTown: "Istanbul", age: 24, team: .ios, contactInformation: info5)

let info6 = Information(phoneNumber: 05377624010, email: "veysel@gmail.com")
let member6 = NeonAcademyMember(fullName: "Veysel Akbalık", title: "iOS Developer Intern", horoscope: "Leo", memberLevel: "A1", homeTown: "Istanbul", age: 25, team: .ios, contactInformation: info6)

let info7 = Information(phoneNumber: 05413454560, email: "mert@gmail.com")
let member7 = NeonAcademyMember(fullName: "Mert Aycan", title: "UI/UX Designer Intern", horoscope: "Gemini", memberLevel: "A1", homeTown: "Istanbul", age: 25, team: .uiux, contactInformation: info7)

let info8 = Information(phoneNumber: 05301091115, email: "furkan@gmail.com")
let member8 = NeonAcademyMember(fullName: "Furkan Kalafat", title: "UI/UX Designer Intern", horoscope: "Scorpio", memberLevel: "A1", homeTown: "Kastamonu", age: 25, team: .uiux, contactInformation: info8)

let info9 = Information(phoneNumber: 05077821034, email: "kardelen@gmail.com")
let member9 = NeonAcademyMember(fullName: "Kardelen Değer", title: "UI/UX Designer Intern", horoscope: "Cancer", memberLevel: "A1", homeTown: "Istanbul", age: 25, team: .uiux, contactInformation: info9)

let info10 = Information(phoneNumber: 05312736363, email: "bugra@gmail.com")
let member10 = NeonAcademyMember(fullName: "Buğra Baş", title: "iOS Developer Intern", horoscope: "Gemini", memberLevel: "A1", homeTown: "Bolu", age: 23, team: .ios, contactInformation: info10)

let info11 = Information(phoneNumber: 05369133613, email: "yusuf@gmail.com")
let member11 = NeonAcademyMember(fullName: "Yusuf Altunoymak", title: "Android Developer Intern", horoscope: "Aquairus", memberLevel: "A1", homeTown: "Istanbul", age: 22, team: .android, contactInformation: info11)

let info12 = Information(phoneNumber: 05345674455, email: "zeynep@gmail.com")
let member12 = NeonAcademyMember(fullName: "Zeynep Gedik", title: "iOS Developer Intern", horoscope: "Sagittarius", memberLevel: "A1", homeTown: "Sivas", age: 25, team: .ios, contactInformation: info12)

let info15 = Information(phoneNumber: 05551112233, email: "oguzhab@gmail.com")
let member15 = NeonAcademyMember(fullName: "Oğuzhan Akın", title: "Team Lead", horoscope: "Gemini", memberLevel: "C1", homeTown: "Istanbul", age: 25, team: .ios, contactInformation: info15)
member15.mentorLevel = "mentorLevel"

members.append(member1)
members.append(member2)
members.append(member3)
members.append(member4)
members.append(member5)
members.append(member6)
members.append(member7)
members.append(member8)
members.append(member9)
members.append(member10)
members.append(member11)
members.append(member12)
members.append(member15)


enum Team: String {
    case ios = "iOS Development Team"
    case ios2 = "Senior iOS Developer"
    case android = "Android Development Team"
    case android2 = "Senior Android Developer"
    case uiux = "UI/UX Design Team"
    case uiux2 = "Lead Designer"
}

//1
var iosTeam: [NeonAcademyMember] = members.filter({ $0.team == .ios })
print(iosTeam.map({ $0.fullName }))

//2
var titleCunt = [String: [NeonAcademyMember]]()
for i in members {
    if var group = titleCunt[i.team.rawValue] {
        group.append(i)
        titleCunt[i.team.rawValue] = group
    } else {
        titleCunt[i.team.rawValue] = [i]
    }
}
print(titleCunt[Team.uiux.rawValue]!.count)

//3
func teamMember(team: Team) {
    for i in members.filter({ $0.team == team}) {
        print(i.fullName)
    }
}
teamMember(team: .android)

//4
for i in members {
    switch i.team{
    case .ios:
        print("This member is a skilled iOS developer")
        break
    case .android:
        print("This member is a skilled iOS developer")
        break
    case .uiux:
        print("This member is a talented designer")
        break
    case .ios2:
        break
    case .android2:
        break
    case .uiux2:
        break
    }
}

//5
func teamMember2(age: Int, team: Team) {
    for i in members.filter({ $0.age > age && $0.team == team}) {
        print(i.fullName)
    }
}
teamMember2(age: 24, team: .ios)

//6
func changeTeam(member: NeonAcademyMember) {
    switch member.team {
    case .ios:
        member.team = .ios2
    case .android:
        member.team = .android2
    case .uiux:
        member.team = .uiux2
    default:
        break
    }
}

changeTeam(member: member1)
print(member1.team)

//7
func avgAge(team: Team) {
    let member = members.filter({ $0.team == team})
    let total = member.reduce(0, { $0 + $1.age })
    print("\(Double(total) / Double(member.count))")
}
avgAge(team: .android)

//8
for i in members {
    switch i.team{
    case .ios:
        print("The iOS Development Team is the backbone of our academy")
        break
    case .android:
        print("The Android Development Team is the backbone of our academy")
        break
    case .uiux:
        print("The UI/UX Design Team is the face of our academy")
        break
    case .ios2:
        break
    case .android2:
        break
    case .uiux2:
        break
    }
}

//9
func contactInfo(team: Team) {
    let teamInfo = [Information]()
    let info = members.filter({ $0.team == team }).map({ $0.contactInformation })
    
    print(info)
}
contactInfo(team: .android)

//10
for i in members {
    switch (i.team, i.age) {
        
    case (.ios, let age) where age > 23:
        print("\(i.fullName) member is a seasoned iOS developer")
        break
    case (.uiux, let age) where age < 24 :
        print("\(i.fullName) member is a rising star in the design world")
        break
    default:
        break
    }
}

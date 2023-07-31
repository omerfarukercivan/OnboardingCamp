enum Team: String {
    case ios = "iOS Development Team"
    case ios2 = "Senior iOS Developer"
    case android = "Android Development Team"
    case android2 = "Senior Android Developer"
    case uiux = "UI/UX Design Team"
    case uiux2 = "Lead Designer"
}

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
    var motivationLevel: Int?
    
    init(fullName: String, title: String, horoscope: String, memberLevel: String, homeTown: String, age: Int, team: Team, motivationLevel:Int? = nil, contactInformation: Information) {
        self.fullName = fullName
        self.title = title
        self.horoscope = horoscope
        self.memberLevel = memberLevel
        self.homeTown = homeTown
        self.age = age
        self.team = team
        self.motivationLevel = motivationLevel
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

//0
func increaseMotivation(member: NeonAcademyMember, motivation: Int) {
    if let lvl = member.motivationLevel {
        member.motivationLevel! += motivation
    } else {
        member.motivationLevel = 1
    }
}
increaseMotivation(member: member1, motivation: 3)
print(member1.motivationLevel!)
increaseMotivation(member: member1, motivation: 5)
print(member1.motivationLevel!)

//1
func motivationMessage(member: NeonAcademyMember) {
    guard let lvl = member.motivationLevel else { return print("This member has no motivation level set") }
    
    if lvl > 5 {
        print("This member is highly motivated")
    }
}
motivationMessage(member: member2)

//2
func motivationLevel(motivation: Int) -> String {
    if motivation > 2 && motivation < 5 {
        return "Moderately motivated"
    } else if motivation > 5 {
        return "Highly motivated"
    }
    
    return "Not motivated at all"
}
motivationLevel(motivation: member1.motivationLevel!)

//3
func nilCoalescing(member: NeonAcademyMember) {
    print(member.motivationLevel ?? 0)
}
nilCoalescing(member: member1)
nilCoalescing(member: member2)

//4
func targetMotivation(member: NeonAcademyMember, targetMoti: Int) -> Bool {
    if let moti = member.motivationLevel {
        if moti >= targetMoti {
            return true
        } else {
            return false
        }
    }
    
    return false
}

targetMotivation(member: member1, targetMoti: 10)

class NeonAcademyMemberClass {
    var fullName: String
    var title: String
    var horoscope: String
    var memberLevel: String
    var homeTown: String
    var age: Int
    var contactInformation: InformationClass
    
    init(fullName: String, title: String, horoscope: String, memberLevel: String, homeTown: String, age: Int, contactInformation: InformationClass) {
        self.fullName = fullName
        self.title = title
        self.horoscope = horoscope
        self.memberLevel = memberLevel
        self.homeTown = homeTown
        self.age = age
        self.contactInformation = contactInformation
    }
}

class InformationClass {
    var phoneNumber: Int
    var email: String
    
    init(phoneNumber: Int, email: String) {
        self.phoneNumber = phoneNumber
        self.email = email
    }
}

var membersClass = [NeonAcademyMemberClass]()

let info1 = InformationClass(phoneNumber: 05331404138, email: "ofar38@gmail.com")
let member1 = NeonAcademyMemberClass(fullName: "Ömer Faruk Ercivan", title: "iOS Developer Intern", horoscope: "Sagittarius", memberLevel: "A1", homeTown: "Kayseri", age: 21, contactInformation: info1)

let info2 = InformationClass(phoneNumber: 05517034817, email: "baki@gmail.com")
let member2 = NeonAcademyMemberClass(fullName: "Baki Hasan Ertürk", title: "iOS Developer Intern", horoscope: "Cancer", memberLevel: "A1", homeTown: "Malatya", age: 31, contactInformation: info2)

let info3 = InformationClass(phoneNumber: 05335427785, email: "bora@gmail.com")
let member3 = NeonAcademyMemberClass(fullName: "Bora Berberoğlu", title: "iOS Developer Intern", horoscope: "Sagittarius", memberLevel: "A1", homeTown: "Tokat", age: 24, contactInformation: info3)

let info4 = InformationClass(phoneNumber: 05333485706, email: "mustafa@gmail.com")
let member4 = NeonAcademyMemberClass(fullName: "Mustafa Harman", title: "iOS Developer Intern", horoscope: "Virgo", memberLevel: "A1", homeTown: "Konya", age: 30, contactInformation: info4)

let info5 = InformationClass(phoneNumber: 05399412426, email: "kerem@gmail.com")
let member5 = NeonAcademyMemberClass(fullName: "Keren Caan", title: "iOS Developer Intern", horoscope: "Cancer", memberLevel: "A1", homeTown: "Istanbul", age: 24, contactInformation: info5)

let info6 = InformationClass(phoneNumber: 05377624010, email: "veysel@gmail.com")
let member6 = NeonAcademyMemberClass(fullName: "Veysel Akbalık", title: "iOS Developer Intern", horoscope: "Leo", memberLevel: "A1", homeTown: "Istanbul", age: 25, contactInformation: info6)

let info7 = InformationClass(phoneNumber: 05413454560, email: "mert@gmail.com")
let member7 = NeonAcademyMemberClass(fullName: "Mert Aycan", title: "UI/UX Designer Intern", horoscope: "Gemini", memberLevel: "A1", homeTown: "Istanbul", age: 25, contactInformation: info7)

let info8 = InformationClass(phoneNumber: 05301091115, email: "furkan@gmail.com")
let member8 = NeonAcademyMemberClass(fullName: "Furkan Kalafat", title: "UI/UX Designer Intern", horoscope: "Scorpio", memberLevel: "A1", homeTown: "Kastamonu", age: 25, contactInformation: info8)

let info9 = InformationClass(phoneNumber: 05077821034, email: "kardelen@gmail.com")
let member9 = NeonAcademyMemberClass(fullName: "Kardelen Değer", title: "UI/UX Designer Intern", horoscope: "Cancer", memberLevel: "A1", homeTown: "Istanbul", age: 25, contactInformation: info9)

let info10 = InformationClass(phoneNumber: 05312736363, email: "bugra@gmail.com")
let member10 = NeonAcademyMemberClass(fullName: "Buğra Baş", title: "iOS Developer Intern", horoscope: "Gemini", memberLevel: "A1", homeTown: "Bolu", age: 23, contactInformation: info10)

membersClass.append(member1)
membersClass.append(member2)
membersClass.append(member3)
membersClass.append(member4)
membersClass.append(member5)
membersClass.append(member6)
membersClass.append(member7)
membersClass.append(member8)
membersClass.append(member9)
membersClass.append(member10)

print(membersClass)

class NeonAcademyMember {
    var fullName: String
    var title: String
    var horoscope: String
    var memberLevel: String
    var homeTown: String
    var age: Int
    var contactInformation: Information
    var mentorLevel: String?

    init(fullName: String, title: String, horoscope: String, memberLevel: String, homeTown: String, age: Int, mentorLevel: String?, contactInformation: Information) {
        self.fullName = fullName
        self.title = title
        self.horoscope = horoscope
        self.memberLevel = memberLevel
        self.homeTown = homeTown
        self.age = age
        self.mentorLevel = mentorLevel
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
let member1 = NeonAcademyMember(fullName: "Ömer Faruk Ercivan", title: "iOS Developer Intern", horoscope: "Sagittarius", memberLevel: "A1", homeTown: "Kayseri", age: 21, mentorLevel: nil, contactInformation: info1)

let info2 = Information(phoneNumber: 05517034817, email: "baki@gmail.com")
let member2 = NeonAcademyMember(fullName: "Baki Hasan Ertürk", title: "iOS Developer Intern", horoscope: "Cancer", memberLevel: "A1", homeTown: "Malatya", age: 31, mentorLevel: nil, contactInformation: info2)

let info3 = Information(phoneNumber: 05335427785, email: "bora@gmail.com")
let member3 = NeonAcademyMember(fullName: "Bora Berberoğlu", title: "iOS Developer Intern", horoscope: "Sagittarius", memberLevel: "A1", homeTown: "Tokat", age: 24, mentorLevel: nil, contactInformation: info3)

let info4 = Information(phoneNumber: 05333485706, email: "mustafa@gmail.com")
let member4 = NeonAcademyMember(fullName: "Mustafa Harman", title: "Android Developer Intern", horoscope: "Virgo", memberLevel: "A1", homeTown: "Konya", age: 30, mentorLevel: nil, contactInformation: info4)

let info5 = Information(phoneNumber: 05399412426, email: "kerem@gmail.com")
let member5 = NeonAcademyMember(fullName: "Keren Caan", title: "iOS Developer Intern", horoscope: "Cancer", memberLevel: "A1", homeTown: "Istanbul", age: 24, mentorLevel: nil, contactInformation: info5)

let info6 = Information(phoneNumber: 05377624010, email: "veysel@gmail.com")
let member6 = NeonAcademyMember(fullName: "Veysel Akbalık", title: "iOS Developer Intern", horoscope: "Leo", memberLevel: "A1", homeTown: "Istanbul", age: 25, mentorLevel: nil, contactInformation: info6)

let info7 = Information(phoneNumber: 05413454560, email: "mert@gmail.com")
let member7 = NeonAcademyMember(fullName: "Mert Aycan", title: "UI/UX Designer Intern", horoscope: "Gemini", memberLevel: "A1", homeTown: "Istanbul", age: 25, mentorLevel: nil, contactInformation: info7)

let info8 = Information(phoneNumber: 05301091115, email: "furkan@gmail.com")
let member8 = NeonAcademyMember(fullName: "Furkan Kalafat", title: "UI/UX Designer Intern", horoscope: "Scorpio", memberLevel: "A1", homeTown: "Kastamonu", age: 25, mentorLevel: nil, contactInformation: info8)

let info9 = Information(phoneNumber: 05077821034, email: "kardelen@gmail.com")
let member9 = NeonAcademyMember(fullName: "Kardelen Değer", title: "UI/UX Designer Intern", horoscope: "Cancer", memberLevel: "A1", homeTown: "Istanbul", age: 25, mentorLevel: nil, contactInformation: info9)

let info10 = Information(phoneNumber: 05312736363, email: "bugra@gmail.com")
let member10 = NeonAcademyMember(fullName: "Buğra Baş", title: "iOS Developer Intern", horoscope: "Gemini", memberLevel: "A1", homeTown: "Bolu", age: 23, mentorLevel: nil, contactInformation: info10)

let info11 = Information(phoneNumber: 05369133613, email: "yusuf@gmail.com")
let member11 = NeonAcademyMember(fullName: "Yusuf Altunoymak", title: "Android Developer Intern", horoscope: "Aquairus", memberLevel: "A1", homeTown: "Istanbul", age: 22, mentorLevel: nil, contactInformation: info11)

let info12 = Information(phoneNumber: 05345674455, email: "zeynep@gmail.com")
let member12 = NeonAcademyMember(fullName: "Zeynep Gedik", title: "iOS Developer Intern", horoscope: "Sagittarius", memberLevel: "A1", homeTown: "Sivas", age: 25, mentorLevel: nil, contactInformation: info12)

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

//print(member)


//1
members.remove(at: 3)
members.count

//2
members.sort(by: { $0.age > $1.age })

//3
members.sort(by: { $0.fullName > $1.fullName })

//4
var membersAbove24: [NeonAcademyMember] = members.filter({ $0.age > 24 })

//5
var iosDev = members.filter({ $0.title.contains("iOS") })

//6
print(members.firstIndex(where: { $0.fullName == "Ömer Faruk Ercivan" })!)

//7
let info15 = Information(phoneNumber: 05551112233, email: "oguzhab@gmail.com")
let member15 = NeonAcademyMember(fullName: "Oğuzhan Akın", title: "Team Lead", horoscope: "Gemini", memberLevel: "C1", homeTown: "Istanbul", age: 25, mentorLevel: "mentor",  contactInformation: info15)

members.append(member15)
print(members.map({ $0.fullName }))

//8
//members.removeAll(where: { $0.memberLevel == "A1" })
members.count

//9
members.sort(by: { $0.age > $1.age })
print("Yaşı en büyük üye: \(members[0].fullName), yaşı: \(members[0].age)")

//10
members.sort(by: { $0.fullName.count < $1.fullName.count})
print("İsmi en uzun üye: \(members[0].fullName), isminin uzunluğu: \(members[0].fullName.count)")

//11
var sameHoros = [String: String]()
var horoscopeCount = [String: Int]()

for i in members {
    sameHoros[i.fullName] = i.horoscope
}

for(_, j) in sameHoros {
    if let count = horoscopeCount[j] {
        horoscopeCount[j] = count + 1
    } else {
        horoscopeCount[j] = 1
    }
}

if let mostFrequentHoroscope = horoscopeCount.max(by: { $0.value < $1.value }) {
    print("En çok burç: \(mostFrequentHoroscope)")
} else {
    print("Bulunamadı.")
}

//12
var sameHome = [String: String]()
var homeCount = [String: Int]()

for i in members {
    sameHome[i.fullName] = i.homeTown
}

for (_, j) in sameHome {
    if let count = homeCount[j] {
        homeCount[j] = count + 1
    } else {
        homeCount[j] = 1
    }
}

if let mostFrequentHome = homeCount.max(by: { $0.value < $1.value })?.key {
    print("En çok şehir: \(mostFrequentHome)")
} else {
    print("Bulunamadı")
}

//13
var totalAge = members.reduce(0, { $0 + $1.age})
var avg = Double(totalAge) / Double(members.count)

//14
var contact = [Information]()
contact = members.map({ $0.contactInformation })
print(contact.map({ $0.email }))

//15
members.sort(by: { $0.memberLevel > $1.memberLevel })
print(members.map({ $0.fullName }))

//16
var sameTitle = [String: [NeonAcademyMember]]()
var contactInfoArr = [NeonAcademyMember]()

for i in members {
    if var group = sameTitle[i.title] {
        group.append(i)
        sameTitle[i.title] = group
    } else {
        sameTitle[i.title] = [i]
    }
}

for (_, i) in sameTitle {
    for j in i {
        contactInfoArr.append(j)
    }
}

print(contactInfoArr.map({ $0.contactInformation.phoneNumber }))

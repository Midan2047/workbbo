//
//  DataCenter.swift
//  workbbo_2
//
//  Created by 안재은 on 18/04/2019.
//  Copyright © 2019 SwiftHelloWorld. All rights reserved.
//

import Foundation

struct Monthlist{
    
    var job: String // 직업 명
    
    var company: String // 회사 명
    
    var due: Int // 모집 기간
    
    var info: String // 회사 정보, 모집 내용
    
}

let recruit1 = Monthlist(job: "R&D", company: "samsung", due: 4, info: "삼성전자 R&D 신입사원 모집")

let categorylist:[Category] = []

struct Category{
    
    var category: String // 직업 군
    
}

let c1 = Category(category: "건설")
let c2 = Category(category: "디자인")
let c3 = Category(category: "전자")
let c4 = Category(category: "화학")
let c5 = Category(category: "생명")
let c6 = Category(category: "수학")
let c7 = Category(category: "컴퓨터")
let c8 = Category(category: "경영")
let c9 = Category(category: "마케팅")
let c10 = Category(category: "환경")

struct Joblist{
    
    var job: String // 직업 명
    
    var company: String // 회사 명
    
    var due: Int // 모집 기간
    
    var info: String // 회사 정보, 모집 내용
    
}



struct Questionlist{
    
    var question: String
    
    var answer: String
    
    func addquestion(question: String){
        
    }
    
}

struct Informationlist{
    
    var name: String // 이름
    
    var age:String // 나이
    
    var school:String // 학교
    
    var major:String // 전공
    
    var score:Int // 학교 성적, 어학 성적 ( 어학 시험 선택도 체크 박스 )
    
    var interest: String // 관심 분야 ( 나중에 체크박스로 선택 할 수 있도록 만들기)
    
    var experience: String // 공모전, 수상경력, 인턴 경험 등 자기 이력 사항 기록하기
    
    // 자소서 단골 질문 세 가지
    
    var question1: String
    
    var question2: String
    
    var question3: String
    
}

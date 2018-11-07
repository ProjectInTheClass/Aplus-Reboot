//
//  DataType.swift
//  Aplus
//
//  Created by herojeff on 2018/11/07.
//  Copyright © 2018 Aplus. All rights reserved.
//

import Foundation

class RecordFile{
    init(fileName: String, inFolder: Int) {
        self.fileName = fileName
        self.inFolder = inFolder
        //save file here, randomize file name
        self.filePath = URL() // <- 오류 정상임!
    }
    //파일 이름
    var fileName: String = ""
    //파일 저장 날짜
    var fileDate: Date = Date()
    //메모 배열
    var fileBookmark: [Bookmark] = []
    //파일 전체 경로
    var filePath: URL
    //최근 재생 위치
    var lastPlayTime: TimeInterval = 0.0
    //소속 폴더 - 0은 소속 없음, 다른 건 랜덤 Int
    var inFolder: Int = 0
}

class RecordFolder{
    init(folderName: String, folderColor1: String, folderColor2: String){
        self.folderName = folderName
        self.folderColor1 = folderColor1
        self.folderColor2 = folderColor2
    }
    convenience init(folderName: String){
        self.init(folderName: folderName, folderColor1: "FFFFFF", folderColor2: "CCCCCC")
    }
    //알람 설정 배열
    var folderAlarm: [UserAlarm] = []
    //폴더 표시 이름
    var folderName: String = ""
    //태그 - 그라디언트 시작 색
    var folderColor1: String = ""
    //태그 - 그라디언트 종료 색
    var folderColor2: String = ""
    //폴더 아이디
    var folderID: Int = 0
    //마지막 녹음 여기?
    var isLastRecordedFileHere: Bool = false
}

class UserAlarm{
    init(weekday: Int, hour: Int, minute: Int) {
        self.weekday = weekday
        self.hour = hour
        self.minute = minute
    }
    func enable(){
        self.isEnabled = true
    }
    var weekday: Int = 0
    var hour: Int = 0
    var minute: Int = 0
    var isEnabled: Bool = false
}

class Bookmark{
    init(timestamp: TimeInterval, memo: String) {
        self.timestamp = timestamp
        self.memo = memo
    }
    //재생 시간 - 위치
    var timestamp: TimeInterval = 0.0
    //내용
    var memo: String = ""
}

class UserSettings{
    //첫 실행?
    var isFirstLaunch: Bool = true
}

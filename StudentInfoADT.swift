//
//  StudentInfoADT.swift
//
//
//  An enum type is a special data type that enables for a variable to be 
//     a set of predefined constants. 
//  The variable must be equal to one of the values that have been
//      predefined for it.
//
//	This program uses enumeration to save position and name of the planets
//
//
//
//  Created by Heejo Suh in Feb 2018
//  Copyright @ 2018 MTHS. All rights reserved.
//
//			swiftc StudentInfoADT.swift


//declare enum
//declare data type
enum GradesEnum: String {
	case TWELVE="TWELVE"
	case ELEVEN="ELEVEN"
	case TEN="TEN"
	case NINE="NINE"
	case EIGHT="EIGHT"
	case SEVEN="SEVEN"
	
}


//------------------------------------------------
struct Student {
	//ADT
	
	var _firstName: String
	var _lastName: String
	var _middleInitial: String
	var _dateOfBirth: String //dd/mm/yyyy
	//var _grade: Grades
	var _grade: String
	//var _identified: Boolean
	var _identified: String

	
	func studentAllInfo()->String {
		//returns full info
		let fullInfo = "\(_firstName) \(_middleInitial) \(_lastName) in grade \(_grade) "
		return fullInfo
	}
}



//------------------------------------------------

var firstName = "first name"
var lastName = "last name"
var dateOfBirth = "date of Birth"
var middleInitial = "middle Initial"
var grade = "grade"
var identified = "if the student is identified"
		
		
var currentStudent: [String]
var currentInput: String?

		
var classRoomStudentCount = 3
var classRoom: [Student] = []
var nthStudent = 0
var notCorrectInput = true

while nthStudent<classRoomStudentCount {
//get each input
	currentStudent = [firstName, lastName, middleInitial, dateOfBirth, grade, identified]
	for index in 0..<currentStudent.count {
		//for each info
		notCorrectInput = true
		while notCorrectInput==true{
			print("\nEnter \(currentStudent[index]) for student #\(nthStudent+1)")
			//print options for grades
			let allGrades = ["TWELVE", "ELEVEN", "TEN", "NINE", "EIGHT", "SEVEN"]
			//---------------------------
			if currentStudent[index] == "Grade" {
				print("Options: ")
				//for grades, print possible inputs
				//for(GradesEnum grades : GradesEnum.values()) 
				print(allGrades)
			}			
							
			currentInput = readLine(strippingNewline: true)

			//check if valid
			//---------------------------
			if currentStudent[index] == grade{
				if GradesEnum(rawValue: currentInput!.uppercased()) != nil {
				//check by string
					//if input is in enum, add to student
					currentStudent[index] = currentInput!
					notCorrectInput = false //get next input
				} else {
					//grade not in enum
					print("Please input a valid grade!\n")
				}
			//---------------------------
			} else if currentStudent[index] == identified{
				//if input is yes or no
				//compare **string**
				if (currentInput=="y"||currentInput=="Y"||currentInput=="n"||currentInput=="N") {
					currentStudent[index] = currentInput! //add to list
					notCorrectInput = false
				} else {
					print("Please enter  Y or N for yes or no!\n")
				}
			//---------------------------
			} else {
				//no specific type required
				currentStudent[index] = currentInput! //add to list
				notCorrectInput = false
			}
			//---------------------------
		}
	}
	classRoom.append(Student(_firstName: currentStudent[0], _lastName: currentStudent[1], _middleInitial: currentStudent[2], _dateOfBirth: currentStudent[3], _grade: currentStudent[4], _identified:currentStudent[5]))
	print("Student #\(nthStudent+1): \(classRoom[nthStudent].studentAllInfo())")
	
	nthStudent+=1
}

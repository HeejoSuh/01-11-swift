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
//			swiftc Planet.swift

//declare enum
//declare data type
enum GradesEnum : String {
	TWELVE = "12",
	ELEVEN = "11",
	TEN = "10",
	NINE = "9",
	EIGHT = "8",
	SEVEN = "7"
	
	//
	static let allGrades = [TWELVE, ELEVEN, TEN, NINE, EIGHT, SEVEN] //must maintain second copy of values
	//to reference using index, use GradesEnum.allGrades[#]
}


//------------------------------------------------


firstName = "First name"
lastName = "Last name"
dateOfBirth = "Date of Birth"
middleInitial = "Middle Initial"
grade = "Grade"
identified = "if the student is identified"
		
var currentStudent: [String] = [firstName, lastName, middleInitial, dateOfBirth, grade, identified]
var currentInput: String?


while true{
//get each input
	for index in 0..<currentStudent.count {
		//for each assignment
		getCorrectInput: while true{
			print("\nEnter \(currentStudent[index]) for student")
			//print options for grades
			//---------------------------
			if currentStudent[index] == "Grade" {
				print("Options: ")
				//for grades, print possible inputs
				//for(GradesEnum grades : GradesEnum.values()) { 
				print(allGrades)
			}				
							
			input = readLine(strippingNewline: true)
			}

			//check if valid
			//---------------------------
			if currentStudent[index] == grade{
				if let currentGrade = PlanetEnum(rawValue: (currentInput!).uppercased()){
					//if input is in enum, add to student
					currentStudent[index] = String(currentGrade)
					break getCorrectInput //get next input
				}else{
					//grade not in enum
					print("Please input a valid grade!\n")
				}
			//---------------------------
			}else if currentStudent[index] == identified{
				//if input is yes or no
				//compare **string**
				if (currentInput=="y"||currentInput=="Y"||currentInput=="n"||currentInput=="N") {
					currentStudent[index] = currentInput //add to list
					break getCorrectInput
				}else {
					print("Please enter  Y or N for yes or no!\n")
				}
			//---------------------------
			}else{
				//no specific type required
				currentStudent[index] = currentInput //add to list
				break getCorrectInput
			}
			//---------------------------
		}
	}
	
	var thisStudent = Student((currentStudent[0], currentStudent[1], currentStudent[2], currentStudent[3], currentStudent[4], currentStudent[5]))
}
			
	
}


public struct Student{
	public string firstName;
	public string lastName;
	public char middleInitial;
	public byte grade;
	public bool identified;
	
	
	public string FullName(){
	// this function returns the full name
	// first, Initial and Last of a student
		string fullNameOfStudent;
		fullNameOfStudent = this.firstName + " " + this.middleInitial+ " " + this.lastName;
		return fullNameOfStudent;
	}
}

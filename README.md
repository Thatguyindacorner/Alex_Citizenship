# Alex_Citizenship
Final Exam for Swift Fundamentals class

1. Programming skills using Swift
2. Ability to select most suitable data structures for storing values
3. Problem solving abilities
4. Logical and Analytical skills
5. Modular code organization

Immigrants who want to obtain Canadian citizenship must pass a knowledge-based quiz about Canadian history, politics, and culture. The mock test consists of 9 questions divided into 3 categories: History, Politics, Culture.
  - Question 1-3 must belong to the History category
  - Questions 4-6 must belong to the Politics category
  - Question 7-9 must belong to the Culture category


 To pass the test, the user must score:
  - A minimum of 33% in the Canadian History category (1 out of 3 questions)
  - A minimum of 66.67% in the Canadian Politics category (2 out of 3 questions)
  - 100% on the Canadian Culture category (all 3 questions)

You may use this link (http://www.thecanadiantest.com/citizenship-test) to view some sample questions, or create your own questions. Each question has 2 possible answer choices. Only 1 of the choices is correct.
To assist instructors in grading your quiz, please design your output to display:
• a * symbol next to the correct answer
• the current question (eg: question 1 out of 9)
Thequizisevaluatedattheendofeachcategory. Forexample,attheendoftheHistorycategory, the application should check if the user has met the passing criteria for the History category (1 out of 3 questions). If yes, then proceed with questions from Canadian Politics. If not, then notify the user that they failed, and end the quiz.
 A minimum of 33% in the Canadian History category (1 out of 3 questions)
 A minimum of 66.67% in the Canadian Politics category (2 out of 3 questions)
 100% on the Canadian Culture category (all 3 questions)
  Specifically:
   Question
     Category
  Question 1
Question 2
Question 3
Show results and evaluate if the quiz should proceed
History History History
            Question 4
Question 5
Question 6
Show results and evaluate if quiz should proceed
Politics Politics Politics
            Question 7 Question 8 Question 9
Show final results
Culture Culture Culture
           Page 2 of 4

At the end of each category, the application must evaluate whether the person can proceed with the next set of questions. Specifically:
• After the history category is complete (questions 1-3), display a message that summarises the results of the category. If the user meets the minimum passing score, they are allowed to proceed to question 4 of the quiz. Otherwise, show a “failure” message and terminate the operations.
• After the politics category is complete (questions 4-6), display a message that summarises the results of the category. If the user meets the minimum passing requirements for the category, then allow them to proceed to question 7. Otherwise, show a “failure” message and terminate the operations.
• After the culture category is complete (questions 7-9), display the final results of the quiz on the screen. You must show the score obtained in each category, and a final message as to whether the user passed or failed the test.
Execution:
When your app starts running, it should perform following operations:
1. Display a welcome message, instructions and rules of the test,
2. Display category title (History, Politics or Culture)
3. Display one question at a time for each category as per the rules stated above,
4. For each question, display two options to select from, user should be able to select their
answer by inputting a or b (options)
5. Identify if the answer is correct and if user is eligible to progress to the next category
and/or if they are pass the test
Technical Requirement:
• Code must be designed using
o object oriented programming
o convenience initializer for any of the classes o protocols for suitable operation
o error handling for suitable operation
o dictionaries
You are responsible to identify appropriate classes, protocols, variables to be created in this task. The task is focused on evaluating your knowledge and understanding of the object- oriented design rather than mere syntax.

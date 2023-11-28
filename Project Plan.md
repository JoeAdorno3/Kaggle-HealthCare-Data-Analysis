## Outcomes 
1. Create a series of tables in SQL for the dataset in question and have shareable SQL files afterwards
2. Need to create a functioning dashboard in Looker for the dataset which I am using
3. Need to have a memo which I've written answering the following questions: 
	1. **Demographic Analysis:**
    
	    - How is age distributed among patients, and are there any age-related trends in medical conditions or procedures?
	    - Is there a gender disparity in the types of medical conditions or procedures and associated costs?
	2. **Health Condition Patterns:**
    
	    - What are the most prevalent medical conditions among the patient population?
	    - Are certain medical conditions more commonly associated with specific age groups or genders?
	3. **Physician Performance:**
    
	    - Can we assess the performance of different doctors based on patient outcomes or costs associated with their treatments?
	    - Are there variations in the effectiveness of treatment among different doctors?
	4. **Hospital Comparison:**
    
	    - How do different hospitals compare in terms of patient outcomes and costs?
	    - Are there specific hospitals excelling in certain procedures or conditions?
	5.  **Insurance Impact:**
    
	    - Is there a correlation between the patient's insurance provider and the amount spent on procedures?
	    - Are there differences in outcomes or costs for patients with different insurance providers?
	6. **Cost Analysis:**
    
	    - What are the major contributors to the overall cost of procedures?
	    - Can we identify specific procedures that contribute significantly to the total cost?
	7. **Blood Type and Medical Conditions:**
    
	    - Is there any correlation between blood type and specific medical conditions or treatment outcomes?
	8. Treatment Efficiency:
		- What treatments lead to the best patient outcomes from a health perspective? 
		- What treatments lead to the best patient outcomes from a cost savings perspective? 
	9. Preventative Measures: 
		- Can we identify opportunities for preventive measures that might reduce the occurrence of certain medical conditions and associated costs?
4. Write up: 
	1. A blog ready post/summary with my process/description of what I did
	2. A paper which dives into/makes the specific recommendations/answers the questions the best that I can 

## Data Source/Context:

Link to Kaggle Dataset  [https://www.kaggle.com/datasets/prasad22/healthcare-dataset/]

Each column provides specific information about the patient, their admission, and the healthcare services provided, making this dataset suitable for various data analysis and modeling tasks in the healthcare domain. Here's a brief explanation of each column in the dataset -

- **Name:** This column represents the name of the patient associated with the healthcare record.
- **Age:** The age of the patient at the time of admission, expressed in years.
- **Gender:** Indicates the gender of the patient, either "Male" or "Female."
- **Blood Type:** The patient's blood type, which can be one of the common blood types (e.g., "A+", "O-", etc.).
- **Medical Condition:** This column specifies the primary medical condition or diagnosis associated with the patient, such as "Diabetes," "Hypertension," "Asthma," and more.
- **Date of Admission:** The date on which the patient was admitted to the healthcare facility.
- **Doctor:** The name of the doctor responsible for the patient's care during their admission.
- **Hospital:** Identifies the healthcare facility or hospital where the patient was admitted.
- **Insurance Provider:** This column indicates the patient's insurance provider, which can be one of several options, including "Aetna," "Blue Cross," "Cigna," "UnitedHealthcare," and "Medicare."
- **Billing Amount:** The amount of money billed for the patient's healthcare services during their admission. This is expressed as a floating-point number.
- **Room Number:** The room number where the patient was accommodated during their admission.
- **Admission Type:** Specifies the type of admission, which can be "Emergency," "Elective," or "Urgent," reflecting the circumstances of the admission.
- **Discharge Date:** The date on which the patient was discharged from the healthcare facility, based on the admission date and a random number of days within a realistic range.
- **Medication:** Identifies a medication prescribed or administered to the patient during their admission. Examples include "Aspirin," "Ibuprofen," "Penicillin," "Paracetamol," and "Lipitor."
- **Test Results:** Describes the results of a medical test conducted during the patient's admission. Possible values include "Normal," "Abnormal," or "Inconclusive," indicating the outcome of the test.

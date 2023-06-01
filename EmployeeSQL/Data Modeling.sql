-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

CREATE TABLE "Employees" (
    "EmployeeNo" INT   NOT NULL,
    "TitleID" VARCHAR(10)   NOT NULL,
    "BirthDate" DATE   NOT NULL,
    "FirstName" VARCHAR(255)   NOT NULL,
    "LastName" VARCHAR(255)   NOT NULL,
    "Sex" VARCHAR(1)   NOT NULL,
    "HireDate" DATE   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "EmployeeNo"
     )
);


CREATE TABLE "DepartmtEmployee" (
    "DepartmentID" VARCHAR(10)   NOT NULL,
    "EmployeeNo" INT   NOT NULL
);

CREATE TABLE "DepartmentManager" (
    "DepartmentID" VARCHAR(10)   NOT NULL,
    "EmployeeNo" INT   NOT NULL
);

CREATE TABLE "Department" (
    "DepartmentID" VARCHAR(10)   NOT NULL,
    "Name" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_Department" PRIMARY KEY (
        "DepartmentID"
     )
);

CREATE TABLE "Salaries" (
    "EmployeeNo" INT   NOT NULL,
    "Salary" INT   NOT NULL
);

CREATE TABLE "Titles" (
    "TitleID" VARCHAR(10)   NOT NULL,
    "Title" VARCHAR(255)   NOT NULL
);

ALTER TABLE "DepartmtEmployee" ADD CONSTRAINT "fk_DepartmtEmployee_DepartmentID" FOREIGN KEY("DepartmentID")
REFERENCES "Department" ("DepartmentID");

ALTER TABLE "DepartmtEmployee" ADD CONSTRAINT "fk_DepartmtEmployee_EmployeeNo" FOREIGN KEY("EmployeeNo")
REFERENCES "Employees" ("EmployeeNo");

ALTER TABLE "DepartmentManager" ADD CONSTRAINT "fk_DepartmentManager_DepartmentID" FOREIGN KEY("DepartmentID")
REFERENCES "Department" ("DepartmentID");

ALTER TABLE "DepartmentManager" ADD CONSTRAINT "fk_DepartmentManager_EmployeeNo" FOREIGN KEY("EmployeeNo")
REFERENCES "Employees" ("EmployeeNo");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_EmployeeNo" FOREIGN KEY("EmployeeNo")
REFERENCES "Employees" ("EmployeeNo");

ALTER TABLE "Titles" ADD CONSTRAINT "fk_Titles_TitleID" FOREIGN KEY("TitleID")
REFERENCES "Employees" ("TitleID");


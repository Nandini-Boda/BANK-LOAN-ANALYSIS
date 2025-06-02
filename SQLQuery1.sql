SELECT * FROM [dbo].[financial_loan]
--SUMMARY
--TOTAL LOAN APPLICATITONS
select COUNT(distinct id) as total_loan_aplications from  financial_loan
--MTD Loan Applications
select count(distinct id) as month_end_applications from financial_loan
where MONTH(issue_date)=12

---PMTD Loan Applications

select count(distinct id) as pre_month_end_applications from financial_loan
where MONTH(issue_date)=11
--Total Funded Amount
alter table financial_loan
select sum(loan_amount) from financial_loan

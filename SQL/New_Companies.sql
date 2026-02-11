select 
c.company_code, c.founder,
count(distinct l.lead_manager_code),
count(distinct s.senior_manager_code), 
count(distinct M.manager_code),
count(distinct e.employee_code) from company c 
join lead_manager l on c.company_code=l.company_code
join senior_manager s on l.company_code=s.company_code
join manager m on s.company_code=m.company_code
join employee e on m.company_code=e.company_code
group by c.company_code,2
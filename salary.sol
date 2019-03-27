pragma solidity >=0.4.22 <0.6.0;
contract salarysheet {
    mapping(uint => employee)  emp;
    uint256  public emp_count=0;
    
        struct employee{
             uint256 emp_id;
        string emp_name;
       
        uint256 salary;
        
    }
    address public hr;
    constructor () public
    {
        hr=msg.sender;
    }
     modifier is_hr()
    {
        
        require(msg.sender==hr);
        _;
    }
    
    
    
    function addemployee(string memory _emp_name,uint256  sal) public
    is_hr
    {
        emp_count +=1;
        emp[emp_count]=employee(emp_count,_emp_name,sal);
    }
   
    
}
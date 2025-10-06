// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract SimpleToken {
    string public name = "Atlag";
    string public symbol = "@lg";
    uint256 public totalSupply = 0;
    mapping (address => uint256) public balanceOf;

    constructor (uint256 _intialSupply) {
        balanceOf[msg.sender] = _intialSupply;
        totalSupply = _intialSupply;
    }

    function transfer (address _to, uint256 _amount) public {
        uint256 senderBalance = balanceOf[msg.sender];
        require(senderBalance >= _amount, "Insufficient balance");

        unchecked { 
            balanceOf[msg.sender] = senderBalance - _amount;
            balanceOf[_to] = balanceOf[_to] + _amount;
        }
    }

    function mint (uint256 _getamount) public {
        require(_getamount > 0 && _getamount<= 5, "Invalid amount"); 
        balanceOf[msg.sender] += _getamount;
        totalSupply += _getamount;

    }


    

}
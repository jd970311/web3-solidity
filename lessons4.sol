// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Fund {
    mapping(address => uint256) public funded;
    uint256 minValue = 1 * 10 ** 18;

    function fund() public payable {
        /*
    require 函数用于确认条件有效性，例如输入变量，或合约状态变量是否满足条件，或验证外部合约调用返回的值
    有两个参数：
        第一个参数为条件判断表达式，必选
        第二个参数为要返回的异常消息提醒，可选

    可以将require看作高级语言的异常来理解。但是有一点不同的是对燃料值GAS的消耗，当条件为假的时候，
    不会对gas有任何消耗，同时也不会在继续执行下面的语句。
        */ 
        require(msg.value >= minValue, "send more Eth");
        funded[msg.sender] = msg.value;
    }
}

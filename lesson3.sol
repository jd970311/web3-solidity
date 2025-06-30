// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {HelloWorld} from "./lesson2.sol";
    /*
    1. 直接引入统一一个文件系统下的合约
    2. 引入github上的合约
    3. 通过包引入
    */ 
contract HelloWorldFactory {
    HelloWorld hw;
    HelloWorld[] hws;

    function createFactory() public {
        hw = new HelloWorld();
        hws.push(hw);
    }

    function getHelloWorld(uint256 index) public view returns (HelloWorld) {
        return hws[index];
    }

    function callHelloWorld(uint256 index, uint256 id)
        public
        view
        returns (string memory)
    {
        return hws[index].sayHello(id);
    }

    function callSetHelloWorld (uint index,string memory newString, uint256 _id) public  {
                hws[index].setHello(newString, _id);
    }
}

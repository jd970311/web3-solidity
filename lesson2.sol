//test1.sol

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// contract 合同/合约  用于声明智能合约
/*
pbulic: 默认就是public
private:
internal:
external
*/

/*
view:只读
pure:用于纯计算
*/

/*
 Solidity 存储方式
 分为暂时性存储和永久性存储
   1. storage - 存储
   2. memory - 记忆
   3. calldata - 通话数据
   4. stack - 堆
   5. codes - 代码
   6. logs - 日志
*/
/*
solidity引用数据类型
   struct：结构体 声明类型
   array： 数组
   mapping：映射（存储的是键值对；key:value）
*/

/*
     在solidity中，一般情况下，
     合约/类型用大写字母开头，变量用小写字母
    */
/*
    在函数中的变量是暂时性存储
    memory和calldata区别：入参是否可以修改；memory入参可以修改；calldata不可以修改
    */

    /*
    mapping (key =>  value) myMap
    mapping 的键 key  可以是基本数据类型，如 address, uint, string 等，
    但不能是动态数组、其他 mapping 或结构体
    当结构体作为mapping的value值时，它只能被声明为 storage 类型，不能是 memory 类型。
    这是因为 mapping 只能存储在状态变量（即 storage）中。
    */ 


contract HelloWorld {
    // 存储在合约中的变量是永久性存储
    string strVar = " hello World";
    struct Info {
        string phrase;
        uint256 id;
        address addr;
        bool isInitialized; //判断是否进行调用Info 进行赋值操作
    }
    mapping(uint256 => Info) infoMapping;

    function sayHello(uint256 _id) public view returns (string memory) {
     if(!infoMapping[_id].isInitialized){
        return addHello(strVar);
     }else{
        return addHello(infoMapping[_id].phrase);
     }
    }

    function setHello(string memory newString, uint256 _id) public {
        Info memory info = Info(newString, _id, msg.sender,true);
        infoMapping[_id] = info;
    }

    function addHello(string memory a) internal pure returns (string memory) {
        return string.concat(a, "from china");
    }
}
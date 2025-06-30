// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
// contract 合同/合约  用于声明智能合约
contract HelloWorld{
    /*
    bool 声明 布尔值
    */ 
    bool loolVar_1 = true;
    bool loolVar_2 = false;

    /*
     uint8 是一种 8位无符号整数类型 
     声明正整数 取值范围 0 - 255
    */
    uint8 uint8Var_1 = 94;
    /*
    uint256 声明正整数 取值范围 0 -  2^256 - 1
    uint  是 uint256 的简写
    */ 
    uint uintVar_1 = 333;
    uint256 uint256Var_1 = 333;

    /*
     int 声明整数 可以取负数，也可以取整数
    */
    int8 int8Var_1 = -55;
    int8 int8Var_2 = 55;
    int256 int256Var_1 = -79840 ;
    int256 int256Var_2 = 79840 ;

    /*
    字节(Byte) 是计算机中用于计量存储容量和数据大小的基本单位。
    一个字节等于8个二进制位（bit）
    bytes 声明字符串;最大不能超过32字节;
    严格意义上来说 bytes是个数组 用于存储多个byte[]
    bytes8 -->  8字节; 声明的字符串不能超过8字节
    bytes16 -->  16字节; 声明的字符串不能超过16字节
    bytes32  --> 32字节; 声明的字符串不能超过32字节
    1 字节(Byte) = 8 位(bit)
    1 千字节(KB) = 1024 字节(Byte)
    1 兆字节(MB) = 1024 千字节(KB)
    1 吉字节(GB) = 1024 兆字节(MB)
    1 太字节(TB) = 1024 吉字节(GB)
    */   
    bytes8 bytes8Var_1 = "Hello";
    bytes32 bytes32Var_1 = "World";

    /*
    string 和 bytes相似；是动态分配的
    */ 
    string strVar_1 = "Hello, World!";

    /*
    address 用于声明地址;地址和字符串是不一样的
    */ 
    // address addressVar_1 = 0x23456789;
}



// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

/*
سوال:
داده مورد نظر را بر اساس اندیس مشخص شدهبه شکلی حذف نمایید که 0 جایگزینش نشود

*/
contract ArraySampleDelete {
    uint256[] public ary2 = [1, 2, 3, 4];

    //نمایش  داده های ary2
    function getArray2() public view returns (uint256[] memory) {
        return ary2;
    }

    // حذف داده اندیس مورد نظر
    function replaceArray2Element(uint8 idx) public returns (uint256[] memory) {
        if (ary2.length <= idx) revert("OwerFlow");

        for (uint256 i = idx; i < ary2.length - 1; i++) {
            ary2[i] = ary2[i + 1];
        }
        ary2.pop();
        return ary2;
    }
}

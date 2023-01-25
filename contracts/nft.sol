// SPDX-License-Identifier: MIT

pragma solidity >=0.4.0 <0.9.0;

contract Nft{
    address[5] public buyers ;

    function buy(uint nftId, address buyer) public returns(uint){
        require(nftId>=0 && nftId<=4) ;
        buyers[nftId] = buyer ;
        return nftId ;
    }

    function getBuyers() public view returns(address[5] memory){
        return buyers ;
    }
}
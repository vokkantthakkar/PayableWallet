pragma solidity ^0.6.0 ;

import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/ERC721.sol' ;

/*
interface DaiToken {

    function transfer(address dst, uint wad) external returns (bool);
    function balanceOf(address guy) external view returns(uint) ;


}*/

contract MyToken is ERC721 {


    uint[] public tokennumber ;

    //DaiToken daitoken ;
    address payable admin ;
    uint256 amount ;


    mapping(uint => bool) tokenstatus ;


    modifier onlyAdmin {
        require(msg.sender == admin) ;
    _;
    }

    constructor() ERC721("Subscription","SUB") public {
        admin = msg.sender ;
        //daitoken = DaiToken(0x4F96Fe3b7A6Cf9725f59d353F723c1bDb64CA6Aa) ;
    }

    function mint(uint _tokennumber) public payable {

        require(tokenstatus[_tokennumber] == false) ;
        require(msg.value == 0.0001 ether) ;

        tokennumber.push(_tokennumber) ;
        _mint(msg.sender, _tokennumber) ;
        tokenstatus[_tokennumber] = true ;
    }


    function process() public onlyAdmin {
        admin.transfer(address(this).balance) ;
    }





}




/*
interface DaiToken {

    function transfer(address dst, uint wad) external returns (bool);
    function balanceOf(address guy) external view returns(uint) ;


}

contract paywall {

    DaiToken daitoken ;
    address payable admin ;
    uint256 amount ;

    constructor() public {
        admin = msg.sender ;
        daitoken = DaiToken(0x4F96Fe3b7A6Cf9725f59d353F723c1bDb64CA6Aa) ;
    }

    function subscribe() public payable{

    require(msg.value == 10 ether) ;


    }
    */

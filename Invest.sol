pragma solidity ^0.5.12;

import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/IERC20.sol';
import './ComptrollerInterface.sol' ;
import './CTokenInterface.sol' ;

contract Invest{

    IERC20 dai ;
    CTokenInterface cDai ;
    ComptrollerInterface comptroller ;

    constructor( address _dai, address _cdai, address _comptroller) public {
        dai = IERC20(_dai) ;
        cDai = CTokenInterface(_cdai) ;
        comptroller = ComptrollerInterface(_comptroller) ;
    }


    function invest(uint256 amount) external {
        dai.approve(address(cDai),amount) ;
        cDai.mint(amount) ;
    }

    function cashout() external {
        uint amount = cDai.balanceOf(address(this)) ;
        cDai.redeem(amount) ;
    }

}

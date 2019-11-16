pragma solidity ^0.5.0;

// Import base Initializable contract for upgradability
import "@openzeppelin/upgrades/contracts/Initializable.sol";

import "@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Detailed.sol";
import "@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Mintable.sol";
import "@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20Burnable.sol";
import "@openzeppelin/contracts-ethereum-package/contracts/GSN/Context.sol";


/**
 * @title ParalelnyToken
 * @dev ParalelnyToken is a testing interal token for coffee vouchers in Paralelna Polis.
 */

contract ParalelnyToken is Initializable, Context, ERC20, ERC20Detailed, ERC20Mintable, ERC20Burnable {

    /**
     * @dev Constructor that gives _msgSender() all of existing tokens.
     */
    function initialize () public initializer {
        ERC20Detailed.initialize("Paralelny Token", "PPBA", 18);
        ERC20Mintable.initialize(_msgSender());
        _mint(_msgSender(), 10000 * (10 ** uint256(decimals())));
    }
}

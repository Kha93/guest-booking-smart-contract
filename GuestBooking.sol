// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract GuestBooking {
    uint256 private myFavNum;
    string private myName;

    struct Person {
        uint256 favNum;
        string name;
    }

    Person[] public listOfPeople;
    mapping(string => uint256) public favNumOf;

    event PersonAdded(uint256 favNum, string name);
    event GuestFavNumberStored(uint256 favNum, string name);

    /**
     * @dev Stores the favorite number and name of a guest.
     */
    function storeYourFavNumberAsGuest(uint256 _myFavNum, string memory _myName) public {
        require(bytes(_myName).length > 0, "Name cannot be empty!");
        myFavNum = _myFavNum;
        myName = _myName;
        emit GuestFavNumberStored(_myFavNum, _myName);
    }

    /**
     * @dev Retrieves the most recent guest's favorite number and name.
     */
    function retrieveRecentFavNumAsGuest() public view returns (uint256 favNum, string memory name) {
        return (myFavNum, myName);
    }

    /**
     * @dev Adds a person to the list of people.
     */
    function addPerson(uint256 _myFavNum, string memory _myName) public {
        require(bytes(_myName).length > 0, "Name cannot be empty!");
        listOfPeople.push(Person({ favNum: _myFavNum, name: _myName }));
        favNumOf[_myName] = _myFavNum;
        emit PersonAdded(_myFavNum, _myName);
    }

    /**
     * @dev Retrieves the list of people.
     */
    function getListOfPeople() public view returns (Person[] memory) {
        return listOfPeople;
    }
}

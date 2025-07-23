// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract images {
    struct image {
        string name;
        string content;
    }

    mapping (string => image) public imagesMap;

    function getImage(string memory _name) public view returns (image memory _imageStruct) {
        return imagesMap[_name];
    }

    function saveImage(string memory _name, string memory _content) external returns (image memory _newImage) {
        _newImage = image(_name, _content);

        imagesMap[_name] = _newImage;

        return _newImage;
    }
}

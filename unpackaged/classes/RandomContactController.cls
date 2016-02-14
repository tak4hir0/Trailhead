public with sharing class RandomContactController {
    public String getRandomName2() {  
        Contact [] myList = [SELECT Name FROM Contact LIMIT 1000];
        // Pick a list entry at random
        Integer index = Math.mod(Math.abs(Crypto.getRandomInteger()),myList.size());
        Contact selected = myList.get(index);

        return selected.Name;
    }
}
void main() {
  var oldFriends = ['kan', 'min'];
  var newFriends = [
    'jung',
    'kim',
    for(var friends in oldFriends) "$friends",
  ];

  print(newFriends); // [jung, kim, kan, min]
}

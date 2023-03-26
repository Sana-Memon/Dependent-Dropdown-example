class Data {
  static String? selectedCity;
  static List<String> cities = [
    'Karachi',
    'Hyderabad',
    'Islamabad',
  ];

  static String? selectedSector;
  static Map<String, List<String>> sectors = {
    'Karachi': ['Karachi-Sector 1', 'Karachi-Sector 2', 'Karachi-Sector 3'],
    'Hyderabad': [
      'Hyderabad-Sector 4',
      'Hyderabad-Sector 5',
      'Hyderabad-Sector 6'
    ],
    'Islamabad': [
      'Islamabad-Sector 7',
      'Islamabad-Sector 8',
      'Islamabad-Sector 9'
    ],
  };

  static List<String> areas = [];

  static String? selectedShop;
  static Map<String, List<String>> shops = {
    'Karachi-Sector 1': ['Karachi-Sector 1-Shop 1', 'Karachi-Sector 1-Shop 2'],
    'Karachi-Sector 2': ['Karachi-Sector 2-Shop 1', 'Karachi-Sector 2-Shop 2'],
    'Karachi-Sector 3': ['Karachi-Sector 3-Shop 1', 'Karachi-Sector 3-Shop 2'],
    'Hyderabad-Sector 4': [
      'Hyderabad-Sector 4-Shop 1',
      'Hyderabad-Sector 4-Shop 2'
    ],
    'Hyderabad-Sector 5': [
      'Hyderabad-Sector 5-Shop 1',
      'Hyderabad-Sector 5-Shop 2'
    ],
    'Hyderabad-Sector 6': [
      'Hyderabad-Sector 6-Shop 1',
      'Hyderabad-Sector 6-Shop 2'
    ],
    'Islamabad-Sector 7': [
      'Islamabad-Sector 7-Shop 1',
      'Islamabad-Sector 7-Shop 2'
    ],
    'Islamabad-Sector 8': [
      'Islamabad-Sector 8-Shop 1',
      'Islamabad-Sector 8-Shop 2'
    ],
    'Islamabad-Sector 9': [
      'Islamabad-Sector 9-Shop 1',
      'Islamabad-Sector 9-Shop 2'
    ],
  };
  static List<String> shopAreas = [];
}

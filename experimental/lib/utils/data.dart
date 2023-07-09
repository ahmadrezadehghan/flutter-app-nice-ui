import 'package:flutter/material.dart';

List categories = [
  {"name": "all", "icon": Icons.border_all},
  {"name": "coding", "icon": Icons.computer_rounded},
  {"name": "learning", "icon": Icons.school_rounded},
  {"name": "design", "icon": Icons.design_services_rounded},
  {"name": "businesses", "icon": Icons.business_rounded},
  {"name": "cooking", "icon": Icons.cookie_rounded},
  {"name": "music", "icon": Icons.music_note_rounded},
  {"name": "art", "icon": Icons.color_lens},
  {"name": "financial", "icon": Icons.wallet_rounded},
];
List images = [
  "https://cdn2.iconfinder.com/data/icons/user-action-3/24/Account_human_person_user_ic_name_of_icon_24px-512.png",
  "https://careersmaster.ug/app/uploads/blog/J--p9jNA9KjuXKdVgZA7gWoaaPjxr3SH.jpg",
  "https://prime-pass.co.uk/wp-content/uploads/2021/09/London_Skyline_60-1024x751.jpg",
  "https://preply.com/wp-content/uploads/2018/04/thought-catalog-214785-2.jpg",
  "https://www.wholesomeyum.com/wp-content/uploads/2017/03/wholesomeyum-spring-mix-salad-recipe-with-blueberries-goat-cheese-and-walnuts-15.jpg",
  "https://cdn.musichouseschool.com/MusicalInstrumentsKeyboardGuitarMicrophone_2.jpg",
  "https://www.moroccoworldnews.com/wp-content/uploads/2013/01/The-Internet-a-blessing-or-a-curse.-AFP.jpg",
  "https://proso.ai/wp-content/uploads/2022/06/ui-and-ux.jpg",
  "https://149842030.v2.pressablecdn.com/wp-content/uploads/2018/06/wood-logo-psd-mockup2.jpg",
  "https://www.floridacareercollege.edu/wp-content/uploads/sites/4/2020/08/12-Reasons-to-Become-an-Automotive-Mechanic-Florida-Career-College.png",
  "https://www.simplilearn.com/ice9/free_resources_article_thumb/Productivity_Management.jpg",
  "https://www.onlc.com/blog/wp-content/uploads/2017/07/ONLC-2017-4.png",
  "https://bs-uploads.toptal.io/blackfish-uploads/components/seo/content/og_image_file/og_image/1276702/budget-ux-user-research-3c9fd05d6141ef7c61fd1c8781b8ad77.png",
  "https://img.freepik.com/free-vector/cartoon-graphic-design-landing-page_52683-70881.jpg?w=2000",
];

List courses = [
  {
    "id": 100,
    "name": "all",
    "image":
        "https://careersmaster.ug/app/uploads/blog/J--p9jNA9KjuXKdVgZA7gWoaaPjxr3SH.jpg",
    "price": "100",
    "duration": "12 o'clock",
    "session": "Chapter 5",
    "review": "3",
    "is_favorited": false,
    "description": "Professional graphic design training",
  },
  {
    "id": 101,
    "name": "painting training",
    "image":
        "https://prime-pass.co.uk/wp-content/uploads/2021/09/London_Skyline_60-1024x751.jpg",
    "price": "500",
    "duration": "12 o'clock",
    "session": "Chapter 5",
    "review": "5",
    "is_favorited": true,
    "description": "Professional graphic design training",
  },
  {
    "id": 102,
    "name": "writing",
    "image":
        "https://preply.com/wp-content/uploads/2018/04/thought-catalog-214785-2.jpg",
    "price": "500",
    "duration": "12 o'clock",
    "session": "Chapter 3",
    "review": "3",
    "is_favorited": false,
    "description": "Professional graphic design training",
  },
  {
    "id": 103,
    "name": "cooking",
    "image":
        "https://www.wholesomeyum.com/wp-content/uploads/2017/03/wholesomeyum-spring-mix-salad-recipe-with-blueberries-goat-cheese-and-walnuts-15.jpg",
    "price": "500",
    "duration": "12 o'clock",
    "session": "Chapter 3",
    "review": "3",
    "is_favorited": false,
    "description": "Professional graphic design training",
  },
  {
    "id": 104,
    "name": "music training course",
    "image":
        "https://cdn.musichouseschool.com/MusicalInstrumentsKeyboardGuitarMicrophone_2.jpg",
    "price": "190",
    "duration": "12 o'clock",
    "session": "Chapter 3",
    "review": "5",
    "is_favorited": false,
    "description": "Professional graphic design training",
  },
  {
    "id": 105,
    "name": "Painting",
    "image":
        "https://images.unsplash.com/photo-1596548438137-d51ea5c83ca5?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "price": "500",
    "duration": "12 o'clock",
    "session": "Chapter 5",
    "review": "3",
    "is_favorited": false,
    "description": "Professional graphic design training",
  },
  {
    "id": 106,
    "name": "network training",
    "image":
        "https://www.moroccoworldnews.com/wp-content/uploads/2013/01/The-Internet-a-blessing-or-a-curse.-AFP.jpg",
    "price": "190",
    "duration": "12 o'clock",
    "session": "Chapter 3",
    "review": "4",
    "is_favorited": false,
    "description": "Professional graphic design training",
  },
  {
    "id": 107,
    "name": "Education of Mechanics",
    "image":
        "https://www.floridacareercollege.edu/wp-content/uploads/sites/4/2020/08/12-Reasons-to-Become-an-Automotive-Mechanic-Florida-Career-College.png",
    "price": "۹۰۰۰۰۰",
    "duration": "12 o'clock",
    "session": "Chapter 3",
    "review": "3",
    "is_favorited": false,
    "description": "Professional graphic design training",
  },
  {
    "id": 108,
    "name": "management training",
    "image":
        "https://www.simplilearn.com/ice9/free_resources_article_thumb/Productivity_Management.jpg",
    "price": "۹۰۰۰۰۰",
    "duration": "12 o'clock",
    "session": "Chapter 5",
    "review": "3",
    "is_favorited": false,
    "description": "Professional graphic design training",
  }
];

List features = [
  {
    "id": 100,
    "name": "top professors",
    "image": "https://proso.ai/wp-content/uploads/2022/06/ui-and-ux.jpg",
    "price": "top 10!",
    "duration": "",
    "session": "",
    "review": "10",
    "is_favorited": false,
    "description": "Professional graphic design training",
  },
  {
    "id": 101,
    "name": "Top Accountants",
    "image":
        "https://www.onlc.com/blog/wp-content/uploads/2017/07/ONLC-2017-4.png",
    "price": "top 10!",
    "duration": "",
    "session": "",
    "review": "10",
    "is_favorited": true,
    "description": "Professional graphic design training",
  },
  {
    "id": 102,
    "name": "Top Trainee",
    "image":
        "https://www.floridacareercollege.edu/wp-content/uploads/sites/4/2020/08/12-Reasons-to-Become-an-Automotive-Mechanic-Florida-Career-College.png",
    "price": "top 10!",
    "duration": "",
    "session": "",
    "review": "10",
    "is_favorited": false,
    "description": "Professional graphic design training",
  },
  {
    "id": 103,
    "name": "Top Business Owners",
    "image":
        "https://www.moroccoworldnews.com/wp-content/uploads/2013/01/The-Internet-a-blessing-or-a-curse.-AFP.jpg",
    "price": "top 10!",
    "duration": "",
    "session": "",
    "review": "10",
    "is_favorited": false,
    "description": "Professional graphic design training",
  },
  {
    "id": 104,
    "name": "Top Companies",
    "image":
        "https://cdn.musichouseschool.com/MusicalInstrumentsKeyboardGuitarMicrophone_2.jpg",
    "price": "top 10!",
    "duration": "",
    "session": "",
    "review": "10",
    "is_favorited": false,
    "description": "Professional graphic design training",
  },
];

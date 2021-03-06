class Constants{
  static const String FIRST_NAME = "first_name";
  static const String NAME = "name";
  static const String LAST_NAME = "last_name";
  static const String EMAIL = "email";
  static const String PHONE = "phone";
  static const String PASSWORD = "password";
  static const String GENDER = "gender";
  static const String USER_TYPE = "user_type";
  static const String PASSWORD_CONFIRMATION = "password_confirmation";
  static const String ID = "id";
  static const String LANGUAGE_CODE = "language";
  static const String TOKEN = "token";
  static const String TOKEN_TYPE = "token_type";
  static const String USER_PREF = "userpref";
  static const String FIREBASE_TOKEN = "firebase_token";
  static const String ISREGISTERED = "is_registered";

  static const String SEARCH_USER = "search";

  //CREATE REQUEST KEYS
  static const String REQUEST_DESTINATION = "destination_location";
  static const String REQUEST_DESTINATION_LATITUDE = "destination_lat";
  static const String REQUEST_DESTINATION_LONGITUDE = "destination_long";
  static const String REQUEST_ARRIVAL = "arrival_location";
  static const String REQUEST_ARRIVAL_LATITUDE = "arrival_lat";
  static const String REQUEST_ARRIVAL_LONGITUDE = "arrival_long";
  static const String REQUEST_DATE = "date";
  static const String REQUEST_TIME = "time";
  static const String REQUEST_SECURITY = "security_guard";
  static const String REQUEST_COMMENTS = "comment";
  static const String REQUEST_IS_ADMIN = "is_admin";
  static const String REQUEST_NOW_OR_LATER = "book_now_or_later";

  //HIRE GUARD REQUEST KEYS
  static const String REQUEST_HG_LOCATION = "location";
  static const String REQUEST_HG_LOCATION_LATITUDE = "location_lat";
  static const String REQUEST_HG_LOCATION_LONGITUDE = "location_long";
  static const String REQUEST_HG_FROM_TIME = "from_time";
  static const String REQUEST_HG_TO_TIME = "to_time";
  static const String REQUEST_HG_FROM_DATE = "from_date";
  static const String REQUEST_HG_TO_DATE = "to_date";
  static const String REQUEST_HG_DAYS = "select_days";
  static const String REQUEST_HG_USER_TYPE = "user_type";
  static const String REQUEST_HG_COUNT = "counting";

  //ACCEPT_REJECT_KEYS
  static const String REQUEST_AR_ID = "id";
  static const String REQUEST_AR_COMMENT = "comment";
  static const String REQUEST_AR_TYPE = "type";
  static const String REQUEST_AR_ACCEPT_OR_REJECT = "status";

  //EDIT PROFILE KEYS
  static const String EDIT_PROFILE_NAME = "name";
  static const String EDIT_PROFILE_GENDER = "gender";
  static const String EDIT_PROFILE_PHONE_NUMBER = "phone_no";
  static const String EDIT_PROFILE_IMAGE = "image";

  //USER_MALE_FEMALE_VALUES
  static const String USER_MALE = "male";
  static const String USER_FEMALE = "female";
  static const String USER_ME = "me";

 //CHANGE PASSWORD KEYS
  static const String CHANGE_PASSWORD_OLD="old_password";
  static const String CHANGE_PASSWORD_NEW="new_password";
  static const String CHANGE_PASSWORD_CONFIRM="confirm_password";

  //LEAVE COMMUNITY AND DELETE COMMUNITY API KEYS
  static const String LEAVE_COMMUNITY_API_COM_ID = "community_id";

  static const String CLAIM_BUSINESS_ID = "business_id";


  static const String DummY_TOken= "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiMDMxMTMzYmM4NTBkMzgzMDFlODZiY2U0OTVjZTQ0NTRkM2U3MDNhY2IwNWUzZWJiZmRiMGVmM2YxZTA4NjE5YWNkOGY4ZWIyNzI4MjdjYTkiLCJpYXQiOjE2MDI3NjY4MTAsIm5iZiI6MTYwMjc2NjgxMCwiZXhwIjoxNjM0MzAyODEwLCJzdWIiOiI3Iiwic2NvcGVzIjpbXX0.bv6pXNob6ESvN0--V_qioU9aaVtwSonP7O2yuO1cev3_vts7thqFVBDBj493T8TEP6T6pDfJhECxF9YDKsPtNclT66pveBctMFubRIlaS2ieKAq27DiPeXCSXJ9JDGZvuK0y5_qUgCbcb9GoU7mT3Z6uS3zmAtgviBVVWet4I6INrEhS7xIhUHz47tdnxajms04ieCyEeU4zMgx87Xcak7RGR1itoMvu1iix32blbLl55qnWZCFZelZlbzZrDlEZ3r9oFUVc8l7RN8c1xFI6yU8DSyq-Zf8oUc3eq5EAsDfKUFxRbDVfwMdg60mfoCO0Qe0UuN3nLvpYNKJ0nPCnvtBIFKT08vvX4RS_VBIjoyC8EfsiMJ4Dx8ie8aV8L62EF5ExxqZzcv8HaYtxUndDaMVlQh1FAYUqUNnba_vhDBWu0MLkV2PEYlEeFl_ob5XsBpp3Ab2i7pZTe68wJDiOACLrPKOXb_OHSr0ojmePbJo2SSLI0mQUJkWyTzzVXNRxSkqOosqYE8X6432OWeiX6KF1WXhyHTDs817VQI3GLteQYpjuACcsDRFC2TLFmscG1o8sZP6Gp8UDEcvQgTepY3cY4xbbRTK8H53iDeAV14FM58cUBxmx9AqIxa7x5DCS2rX-vUfm7z_mp215eGHcDqFn2_F8jHOiRSkyz3G3Chw";


  //FIREBASE CHAT OBJECT KEYS
  static const String SENDER ="sender";
  static const String RECIEVER ="reciever";
  static const String MESSAGE ="message";
  static const String TYPE ="type";
  static const String SENDER_NAME ="name";
  static const String TIMESTAMP ="timestamp";

  //FIREBASE USER AND CHAT TABLE NAME
  static const String USER_TABLE ="users";
  static const String COMMUNITY_TABLE ="communities";
  static const String CHAT_TABLE ="chat_inbox";

  //FIREBASE USER OBJECT KEYS
  static const String USER_ID_F ="id";
  static const String USER_NAME ="name";
  static const String USER_EMAIL ="email";
  static const String USER_PHONE ="mobile";
  static const String USER_IMAGE ="image";
  static const String USER_CHATTING_WITH ="chattingwith";
  static const String USER_LAST_MESSAGE ="lastmessage";
  static const String USER_LAST_MESSAGE_TIME ="messagetime";
  static const String USER_STATUS ="status";
  static const String USER_CHATS ="user_chats";
  static const String USER_COMMUNITIES ="my_communities";
  static const String USER_STATUS_ONLINE ="Online";
  static const String USER_STATUS_OFFLINE ="Offline";

  //FIREBASE COMMUNITY OBJECT KEYS
  static const String COM_ID_F ="com_id";
  static const String COM_NAME ="com_name";
  static const String COM_IMAGE ="com_image";
  static const String COM_USERS ="com_users";
  static const String COM_INVITED_USERS ="com_invites";
  static const String COM_ADMIN ="com_admin";

  static const String COM_LAST_MESSAGE ="com_lastmessage";
  static const String COM_LAST_MESSAGE_TIME ="com_lastmessage_time";
  static const String COM_CREATED_DATE ="com_created_date";
  static const String COM_SENDER_NAME ="com_sender_name";

  static const String RECENT_SEARCH_LIST = "searchlist";

  static const String LOCAL_IMAGE="assets/images/";

  //BASE URL FOR IMAGES
  static const String BASE_URL="https://eliteguardian.co.uk/api/";

  static const String IMAGE_BASE_URL_2="https://geeniuz.co/public/";

  //GOOGLE PLACE API KEY
  static const String API_KEY ="AIzaSyD3hJNvatQ8W1cPBS4ZeLS8U8T5x0YQqMY";

  static const STRIPE_PUBLISHABLE_KEY="pk_test_51Ij6z0SJevAuhzAiEOS2WOXD53ArVKDaJoU8SmvqJIB9iWwJKioa1QWuaUfVFGlpSt32LKhfwdkbjHROgLvVULqE009LRW5zSg";

static const STRIPE_MERCHANT_ID="sk_test_51Ij6z0SJevAuhzAi519NSckdagTzIUQIpgHCqLkOQ6qKue84G94NPwgjspYFzh6VKoYDFSu1rnsRAKFmwdKPQHTX00kDiRE1v1";
}

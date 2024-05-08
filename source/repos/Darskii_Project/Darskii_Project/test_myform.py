import unittest
import myform 

class test_myform(unittest.TestCase):
   def test_email_validation_with_incorrect_data(self):
        list_mail_uncor = ["", "1213456", "dinar@", "@dinar", "dinar.", "dinar..com", "dinar@.",
                           "dinar@..com", "dinar@com", "dinar@com.", "dinar @com",
                          "dinar@ com", "dinar @ com", "dinar@com com", "dinar@com.r",
                          "dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd" +
                          "dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd" +
                          "dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd" +
                          "dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd@mail.com"]
        for tmp in list_mail_uncor:
            self.assertFalse(myform.validate_email(tmp))

   def test_email_validation_with_correct_data(self):
        list_mail_cor = ["dinar@mail.ru", "di.din@gmail.com", "mail@example.com", "stasyarushin@mail.com"
                        "danilll.lastname@domain.com", "email@domain.co.ru", "usermailbox@example.com",
                       "user-mailbox@example.com", "dinar..dar@example.com", "john.doe@example.com", "din@yandex.ru.com"]
        for tmp in list_mail_cor:
            self.assertTrue(myform.validate_email(tmp))

if __name__ == '__main__':
    unittest.main()


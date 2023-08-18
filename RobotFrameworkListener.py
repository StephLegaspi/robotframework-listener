from robot.api import logger
from selenium.webdriver.support.events import AbstractEventListener

class RobotFrameworkListener(AbstractEventListener):
    def before_navigate_to(self, url, driver):
        logger.info("URL before navigation: '%s'." % url)

    def after_navigate_to(self, url, driver):
        logger.info("URL after navigation: '%s'." % driver.current_url)

    def before_change_value_of(self, element, driver):
        logger.info("Before clearing/entering the text field ")

    def after_change_value_of(self, element, driver):
        logger.info("After clearing/entering the text field")

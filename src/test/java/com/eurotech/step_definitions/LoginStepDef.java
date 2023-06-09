package com.eurotech.step_definitions;
import com.eurotech.pages.DashboardPage;
import com.eurotech.pages.LoginPage;
import com.eurotech.utilities.ConfigurationReader;
import com.eurotech.utilities.Driver;
import io.cucumber.java.en.*;
import org.junit.Assert;

import java.util.Map;

public class LoginStepDef {

    LoginPage loginPage = new LoginPage();
    DashboardPage dashboardPage = new DashboardPage();

    @Given("The user is on the login page")
    public void the_user_is_on_the_login_page() {

        Driver.get().get(ConfigurationReader.get("url"));
    }
    @When("The user enters teacher credentials")
    public void the_user_enters_teacher_credentials() {

        loginPage.loginAsTeacher();
    }
    @Then("The user should be able to login")
    public void the_user_should_be_able_to_login() {
        Assert.assertTrue(dashboardPage.welcomeMessage.getText().contains("Welcome"));


    }


    @When("The user enters student credentials")
    public void theUserEntersStudentCredentials() {
        loginPage.loginAsStudent();
    }


    @When("The user enters developer credentials")
    public void the_user_enters_developer_credentials() {
        loginPage.loginAsDeveloper();

    }

    @When("The user logs in using {string} and {string}")
    public void theUserLogsInUsingAnd(String username, String password) {
        System.out.println("username = " + username);
        System.out.println("password = " + password);
        loginPage.login(username, password);
    }

    @Then("The welcome message contains {string}")
    public void theWelcomeMessageContains(String expectedMessage) {
        System.out.println("expectedMessage = " + expectedMessage);
        Assert.assertTrue(dashboardPage.welcomeMessage.getText().contains(expectedMessage));
    }

    @When("The user logs in following credentials")
    public void the_user_logs_in_following_credentials(Map<String,String> userCredentials) {

        System.out.println("userCredentials = " + userCredentials);
        String username = userCredentials.get("username");
        String password = userCredentials.get("password");
        loginPage.login(username, password);

        String expectedMessage = userCredentials.get("message");
        Assert.assertTrue(dashboardPage.welcomeMessage.getText().contains(expectedMessage));
    }
    @Then("The user should not be able to login")
    public void the_user_should_not_be_able_to_login() {

        Assert.assertTrue(loginPage.warningMessage.isDisplayed());

    }

    @Then("Verify the error message contains {string}")
    public void verify_the_error_message_is(String expectedMessage) {
        Assert.assertTrue(loginPage.warningMessage.getText().contains(expectedMessage));

    }

    @Then("The warning message contains {string}")
    public void the_warning_message_contains(String expectedMessage) {
        System.out.println("Actual Message " + loginPage.getWarningMessage(expectedMessage));
        Assert.assertEquals(expectedMessage,loginPage.getWarningMessage(expectedMessage));
    }
}

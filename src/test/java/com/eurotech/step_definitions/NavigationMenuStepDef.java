package com.eurotech.step_definitions;

import com.eurotech.pages.DashboardPage;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import jdk.swing.interop.SwingInterOpUtils;
import org.junit.Assert;

import java.sql.SQLOutput;


public class NavigationMenuStepDef {
    DashboardPage dashboardPage = new DashboardPage();

    @Then("The user should be able to see Welcome message")
    public void the_user_should_be_able_to_see_welcome_message() {
        System.out.println("The user should be able to login");
    }
    @Then("The user navigates the Developers Menu")
    public void the_user_navigates_the_developers_menu() {
        System.out.println("The user navigates to the Developers Menu");
    }
    @Then("The user get the text Developers")
    public void the_user_get_the_text_developers() {
        System.out.println("The user should be able to see the text Developers");
    }

    @Then("The user get the text of Welcome")
    public void the_user_get_the_text_of_welcome() {
        System.out.println("The user get the text of Welcome");
    }
    @Then("The user click the All Post Menu")
    public void the_user_click_the_all_post_menu() {
        System.out.println("The user navigates to the All Post Menu");
    }
    @Then("The user get the text of Posts")
    public void the_user_get_the_text_of_posts() {
        System.out.println("The user get the text of Posts");
    }


    @And("The user clicks the My Account Menu")
    public void theUserClicksTheMyAccountMenu() {
        System.out.println("The user navigates to My Account Menu" );
    }

    @Then("The user get the text of Dashboard")
    public void theUserGetTheTextOfDashboard() {
        System.out.println("The user get the text of Dashboard");
    }


    @Then ("The user should be able to see header as {string}")
    public void the_user_should_be_able_to_see_header_as(String expectedHeader) {
        String actualHeader = dashboardPage.getHeader(expectedHeader);
        Assert.assertEquals(expectedHeader, actualHeader);
    }

    @Then ("The user navigates to {string} Menu")
    public void the_user_navigates_to_menu(String menuName) {
        dashboardPage.navigateMenu(menuName);
    }


    @And("The user navigates the {string} Menu")
    public void theUserNavigatesTheMenu(String arg0) {

    }
}


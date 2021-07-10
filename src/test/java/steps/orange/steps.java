package steps.orange;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.github.bonigarcia.wdm.WebDriverManager;
//import org.apache.log4j.BasicConfigurator;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.openqa.selenium.support.ui.ExpectedConditions;

import java.util.List;


public class steps {
    WebDriver driver;

    @Given("user go to google and search orange business services")
    public void user_go_to_google_and_search_orange_business_services() {
        WebDriverManager.chromedriver().setup();
        driver = new ChromeDriver();
        driver.manage().window().maximize();
        driver.get("https://google.com");

    }

    @When("user fill search as orange business services and click on search")
    public void user_fill_search_as_orange_business_services_and_click_on_search() throws InterruptedException
    {


        driver.findElement(By.name("q")).sendKeys("orange business services");
        Thread.sleep(1000);
        driver.findElement(By.className("eIPGRd")).click();
        Thread.sleep(1000);

        WebElement s = driver.findElements(By.className("yuRUbf")).get(0);
        s.click();
        Thread.sleep(1000);
    }


    @When("user click on solution then all product")
    public void user_click_on_solution_then_all_product() {

            new WebDriverWait(driver, 20).until(ExpectedConditions.elementToBeClickable(By.xpath("/html/body/div[3]/header/div/nav/div/div[3]/div[1]/nav/ul/li[1]/a"))).click();
            driver.findElement(By.xpath("/html/body/div[3]/header/div/nav/div/div[3]/div[1]/nav/ul/li[1]/ul/li/div/div[3]/ul/li/a")).click();

        }

    @And("validate that you have")
    public void validate_that_you_have() {
        List<WebElement> drop =driver.findElements(By.xpath("//*[@id=\"edit-solutions\"]"));
        WebElement q ;
    for (int i=0 ;i<drop.size(); i++) {
         q =drop.get(i);
         System.out.println(q.getText());
    }

    }
    @And("choose cloud and click on apply")
    public void  choose_cloud_and_click_on_apply()   {
        driver.findElement(By.xpath("/html/body/div[3]/div[2]/section/div/div[2]/div[1]/div[2]/form/div/span/select")).sendKeys("cloud");
            driver.findElement(By.xpath("/html/body/div[3]/div[2]/section/div/div[2]/div[1]/div[2]/form/div/div/input")).click();

        }

    @And("choose item with the following title managed application")
    public void choose_item_with_the_following_title_managed_application (){
        driver.findElement(By.xpath("/html/body/div[3]/div[2]/section/div/div[2]/div[1]/div[3]/div/div/div[2]/a/div/div[3]")).click();
    }

    @And("validate the system open right article")
    public void validate_the_system_open_right_article() {
        if (driver.getPageSource().contains(" are here to help")) {
            System.out.println("TEXT VALID");
        }
        else
        {
            System.out.println(" TEXT NOT VALID ");
        }
        driver.close();
    }

    @Then("navigate to the page")
    public void navigate_to_the_page() {
    }
}
package functionaltest;

import java.util.concurrent.TimeUnit;
import org.openqa.selenium.htmlunit.HtmlUnitDriver;
import org.openqa.selenium.By;
//import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
//import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.annotations.Test;

public class ftat {
	
	public HtmlUnitDriver driver;
	//public WebDriver driver;
	public WebDriverWait wait;
	public String URL = "http://13.91.103.36:4000/springmvc-user-reg-login/";
	public String URL1 = "http://13.91.103.36:4000/springmvc-user-reg-login/login";
	 
	@Test(priority = 0)
	public void homePagetest() {
		driver = new HtmlUnitDriver();
		//driver= new FirefoxDriver();
		wait = new WebDriverWait(driver, 10);
		driver.get(URL);
		driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
		driver.findElement(By.xpath("//a[contains(text(),'Login')]")).isDisplayed();
		driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
		driver.findElement(By.xpath("//a[contains(text(),'Register')]")).click();
		driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
	}
	
	@Test(priority = 1)
	public void logintest() {
		driver = new HtmlUnitDriver();
		//driver= new FirefoxDriver();
		wait = new WebDriverWait(driver, 10);
		driver.get(URL1);
		driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
		// Login Page content check
		driver.findElement(By.name("username")).isDisplayed();
		driver.findElement(By.name("password")).isDisplayed();
		driver.findElement(By.xpath("//input[@id='username']")).isDisplayed();
		driver.findElement(By.xpath("//input[@id='password']")).isDisplayed();
		driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
		// Login operation
		driver.findElement(By.xpath("//input[@id='username']")).sendKeys("guest");
		driver.findElement(By.xpath("//input[@id='password']")).sendKeys("guest");
		driver.findElement(By.xpath("//button[@id='login']")).click();
		driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
	}
}

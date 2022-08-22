import java.io.IOException;
import java.net.URL;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.remote.RemoteWebDriver;
import org.testng.annotations.Test;

public class ChromeSelenium {
    public static void main(String[] args) throws IOException, InterruptedException {
        ChromeOptions chromeOptions = new ChromeOptions();
        chromeOptions.addArguments(
                "--no-sandbox",
                "--whitelisted-ips=''",
                "--disable-dev-shm-usage");
        WebDriver driver = new RemoteWebDriver(new URL("http://localhost:44444/wd/hub"), chromeOptions);
        driver.get("https://ifconfig.me/");
        Thread.sleep(1000);

        if (driver.getPageSource().contains("IP Address")) {
            System.out.println("Pass");
        } else {
            System.out.println("Fail");
        }
        driver.quit();
    }
}

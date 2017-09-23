// Incorporamos el código de la API de selenium al script para 'selenium-webdriver'
import java.util.concurrent.TimeUnit;

// Importamos clases de Selenium
import org.openqa.selenium.*;
import org.testng.annotations.*;

// Importamos configuraciones necesarias para que el proyecto soporte Chrome e Internet Explorer como navegadores
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.ie.InternetExplorerDriver;

public class Login_busqueda_en_Linkedin
{
	private WebDriver driver;
    private String Web = "https://www.linkedin.com/";
    @Parameters("browser")
    @BeforeTest
	
     public void launchapp(String browser)
	{
		// Se define variable para almacenar el momento en que comienza y finaliza la prueba
		long time_start, time_end;
	
		// Se definen variables para ser usadas como entrada, llamarían a un mantenedor de datos de prueba para no modificar código
		// también se pudo insertar direcctamente en el código para que no se solicitaran por pantalla
		public string user, pass, contacto;
		
		// Controlando el proyecto para uso de Chrome e Internet Explorer como navegadores
		if (browser.equalsIgnoreCase("chrome"))
      {
         System.out.println(" Ingresando a navegador Chrome");
         System.setProperty("webdriver.chrome.driver", "C:\\chromedriver.exe");
         driver = new ChromeDriver();
      }
		else if (browser.equalsIgnoreCase("ie"))
      {
         System.out.println("Executing on IE");
         System.setProperty("webdriver.ie.driver", "C:\\IEDriverServer.exe");
         driver = new InternetExplorerDriver();         
      }
      else
      {
         throw new IllegalArgumentException("Navetador utilizado no compatible");
		 driver.close();
      }
		//Mensaje de ingreso a la URL de Linkedin
		System.out.println("Entrando a: " + web);
		
		//Iniciando el contador para el tiempo de la prueba
		time_start = System.currentTimeMillis();
		
		// Recibiendo parametro de la URL
		driver.get(web);
		
		// Controlando el tiempo de espera
		driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
		
		// Maximizar la ventana 
		driver.manage().window().maximize();		
		System.out.println("Carga de: " + web + "finalizada");

		//Se envia parametro del usuario
		WebElement element;
		element = driver.findElement(By.id("login-email"));
		element.sendKeys(user);
			 
		System.out.println("Email introducido");
			 
		//Se envia parametro de la contraseña
		WebElement element2;
		element2 = driver.findElement(By.id("login-password"));
        //Introducimos la contraseña
		element2.sendKeys(pass);
	  
		System.out.println("Contraseña introducida");

		//Pulsar el botón para logarnos en la web de Linedin
		driver.findElement(By.id("login-submit")).click();

		if //Loguearse con un usuario no registrado
		{
         wait = new WebDriverWait(driver, 10);
         mensajeError = wait.until
		 (ExpectedConditions.visibilityOfElementLocated((By.className("error-login-2"))));
		 stringBuff = mensajeError.getText();
         System.out.println("Mensaje del sistema: "+stringBuff);
		 System.out.println(Exception e);
		 driver.close();
		}
		else //Loguearse con un usuario registrado
		{
			System.out.println("Login completado en: " + web);

			public void buscar_contacto() 
			{
				WebElement searchBox = driver.findElement((By.name("q"));
				searchBox.sendKeys(contacto);
				searchBox.quit();
				assertEquals("webdriver - Contact Search", driver.getTitle());
			}
		}
		
		// Tiempo de la prueba
		time_end = System.currentTimeMillis();
		double  time_total= time_end - time_start;
		System.out.println("El tiempo tomado ha sido: "+ (time_total/1000) +" s");
		
		//Cerramos navegador
		@AfterTest
		public void closeBrowser()
		{
			driver.close();
		}
	}
}
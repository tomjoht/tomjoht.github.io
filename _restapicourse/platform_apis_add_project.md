---
title: "Adding a Sample Project"
permalink: /platform_apis_sample_project/
course: "Documenting REST APIs"
type: notes_docapis
weight:
---

1. In Eclipse, go to **File > New > Java Project**.
	<img src="{{ "/images/restapicourse/newjavaproject.png" | prepend: site.baseurl }}" alt="Creating a New Java Project in Eclipse" />
	
2. Name the project `acme` and then click **Finish**.
1. In the **Project Explorer** (left pane), right-click your project name and select **New > Class**. 
	
	<img src="{{ "/images/restapicourse/eclipsenewclass.png" | prepend: site.baseurl }}" alt="Creating a new class" />
	
2. Name it ACMESmartphone.java and paste in the following content:
	
	```java
	package acme;
	
	import java.io.IOException;
	
	/**
	 * Works like a regular smartphone but also tracks roadrunners.
	 * <p>
	 * The ACME Smartphone can perform similar functions as other smartphones, such
	 * as making phone calls, sending text messages, and browsing the web. However,
	 * the ACME Smartphone also enables GPS tracking on roadrunners. You can monitor
	 * the location of all roadrunners within a 20 mile radius using the RoadRunner
	 * Tracker app.
	 * <p>
	 * Note that the RoadRunner Tracker app requires you to be connected to wifi. It
	 * will not work on cellular data.
	 * 
	 * @author Tom Johnson
	 * @version 2.0
	 * @since 1.3
	 * @see Dynamite
	  */
	public class ACMESmartphone {
		
		/**
		 * The coordinates where the nearest roadrunner is located.
		 */
		
		public String LongLat = "Longitude = 39.2334, Latitude = 41.4899"; // hard-coded for simplicity's sake.
		
		
		double model;
		String license;
		
		/**
		 * Creates and initializes a new ACME_Smartphone with the appropriate model and license number. 
		 * 
		 * Note that if your license is invalid or if the model is deprecated, the zapping controls on the
		 * phone will backfire.
		 * 
		 * @param model  The model of the ACME Smartphone you are initializing.
		 * @param license  The license associated with your ACME Smartphone.
		 */
		public ACMESmartphone(double model, String license) {
			this.model = model;
			this.license = license;
			System.out.println("model" + this.model + " now initialized for license " + license );
		}
		
		/**
		 * Gets the geocoordinates of roadrunners based on your city and state.
		 * 
		 * @param city the city you want to browse for roadrunners
		 * @param state the state you want to browse for roadrunners
		 * @return the coordinates of the roadrunner in your area
		 * @throws IOException if you put integers instead of strings
		 */
		public String findRoadRunner(String city, String state) throws IOException {
				
			System.out.println("location: " + city + ", " + state);
			System.out.println("getting geocoordinates of roadrunner.... ");
			System.out.println("roadrunner located at " + LongLat);
			return LongLat;
			
		}
		
		/**
		 * Zaps the roadrunner with the amount of volts you specify. 
		 * <p>
		 * Do not exceed more than 30 volts or the zap function will backfire. 
		 * For another way to kill a roadrunner, see the {@link Dynamite#blowDynamiteLoudBang} method.
		 * 
		 * @throws IOException if you don't enter an integer data type amount for the voltage 
		 * @param voltage  the number of volts you want to send into the roadrunner's body
		 * @see #findRoadRunner 
		 * @see Dynamite#blowDynamiteLoudBang and Dynamite#blowDynamiteSilentBang
		 */
		public void zapRoadRunner(int voltage) throws IOException {
			if (voltage < 31) {
				System.out.println("Zapping roadrunner with " + voltage + " volts!!!!");
			}
			else {
				System.out.println("Backfire!!! zapping coyote with 1,000,000 volts!!!!");
			}
		}
	
	}
	```
	
2. Right-click the project and select **New > Class**. Name it Dynamite.java and paste in the following content:
	
	```java
	package acme;
	
	/**
	 * Provides ways to explode dynamite to blow up roadrunners.
	 * <p>
	 * 
	 * Try using the {@link ACMESmartphone#zapRoadRunner} before
	 * resorting to {@link #blowDynamiteLoudBang}. However, if you do have a lot of
	 * roadrunners, the {@code zapRoadRunner} method may not be
	 * efficient enough. You'll probably just want to resort to
	 * <code>blowDynamiteLoudBang()</code> to annihilate them all at once.
	 */
	public class Dynamite {
		
		/**
		 * Blows dynamite with a decibel level approximating that of a fog horn. 
		 * @param fuseLength  the length of the fuse on the stick of dynamite 
		 * @see #blowDynamiteSilentBang
		 * @see ACMESmartphone#zapRoadRunner
		 */
		public void blowDynamiteLoudBang(int fuseLength) {
			System.out.println("lighting fuse with length of " + fuseLength + " inches.");
			System.out.println("kabang!!! big explosion!!!");
		}
	
		
		/**
		 * Blows dynamite with almost no sound at all (equivalent to a silencer on a gun). 
		 * @param fuseLength  the length of the fuse, which determines safety (silent bangs are just as deadly as loud bangs)
		 * @see #blowDynamiteLoudBang
		 * @see ACMESmartphone#zapRoadRunner
		 */
		public void blowDynamiteSilentBang(int fuseLength) {
			System.out.println("lighting fuse with length of " + fuseLength + " inches.");
			System.out.println("<silent boom>. no one hears it.");
		}
	}
	```
	
	3. Right-click the project and select **New > Class**. Name it App.java and paste in the following content:
	
	```java
	package acme;
	
	import java.io.IOException;
	
	public class App {
	
		public static void main(String[] args) throws IOException {
			
			// First initialize your smartphone using the model number and license key.
			ACMESmartphone myACMESmartphone = new ACMESmartphone(2.0, "398978fdskj");
			
			// Locate the roadrunner.
			myACMESmartphone.findRoadRunner("Santa Clara","California");
			
			// Zap the roadrunner with the amount of voltage you want.
			myACMESmartphone.zapRoadRunner(40);
			
			Dynamite myDynamite = new Dynamite();
			myDynamite.blowDynamiteLoudBang(1);
	
		}
	
	}
	```
	
4. Click the **Run** button. 
	
	<img src="{{ "/images/images/eclipserunbutton.png" | prepend: site.baseurl }}" alt="Eclipse Run button" />
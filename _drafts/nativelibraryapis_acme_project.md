---
title: "Adding a Sample Project"
permalink: /nativelibraryapis_acme_project/
course: "Documenting REST APIs"
jtype: notes_docapis
weight:
---

## About the sample project

The sample Java project is a simple little application about different tools that a coyote will use to capture a roadrunner. There are two classes (ACMESmartphone and Dynamite) and another class file called App that references the classes.

This program doesn't really do anything except print little messages to the console, but it's hopefully simple enough to be instructive to someone new to Java. The main purpose of the Java project is to demonstrate different doc tags, their placement, and how they get rendered in the Javadoc.

## Incorporate the project in Eclipse
{{activity}}
Although you could download and import the project, because it's so small, I've decided to provide instructions on simply rebuilding it on your own Eclipse project. This way you'll also see how to build your own projects, which is essential if you set about trying to learn Java.

To recreate the acme project:

1. If you already have the Java perspective enabled, go to **File > New > Java Project**. If you don't see this option, then the Java perspective is not enabled. Go to **File > New > Project**. In the New Project wizard, expand **Java** and select **Java Project**. Click **Next**.

	<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/newjavaproject.png" alt="Creating a New Java Project in Eclipse" />

2. Name the project `acme`, accept the other defaults, and then click **Finish**.

	If you didn't have the Java perspective active, you'll see a Open Associated Perspective dialog box. Select **Yes**, since this will give you more controls.

3. In the **Project Explorer** (left pane), right-click your project name and select **New > Class**.

	<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/eclipsenewclass.png" alt="Creating a new class" />

4. In the **Name** box, type **ACMESmartphone**, accept the other defaults, and click **Finish**.
5. In the new file that opens, remove the default content added, and then paste in the following content:

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

6. Right-click the project and select **New > Class**. Name the new class **Dynamite**, accept the defaults, and click **Finish**.
7. Remove the default content and paste in the following:

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

8. Right-click the project and select **New > Class**. Name it **App** and paste in the following content:

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

9. Click the **Run** button.

	<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/eclipserunbutton.png" alt="Eclipse Run button" />

	Some text should be printed in the console area.

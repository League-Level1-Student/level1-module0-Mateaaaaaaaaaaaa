package _01_methods._1_houses;

import java.awt.Color;
import java.util.Random;

import org.jointheleague.graphical.robot.Robot;

/*
 *    Copyright (c) The League of Amazing Programmers 2013-2021
 *    Level 1
 */
public class Houses {
	Robot r = new Robot();

	public void run() {
		// Check the recipe to find out what code to put here
		r.setWindowColor(Color.black);
		r.setSpeed(15);
		r.moveTo(10, 545);
		r.penDown();
		Random ran = new Random();
		for(int i=0; i<10; i++) {
			//drawHouse(  75+ran.nextInt(200)    );
			//		drawHouse("small");
			drawHouse("small", Color.blue);
			//drawHouse("medium");
			drawHouse("medium", Color.white);
			//drawHouse("large");
			drawHouse("large", Color.red);
		} 



	}
	void drawHouse(int height) {

		//r.setPenColor(Color.);
		r.move(height);
		if (height<250) {
			drawPointyRoof();
		}else {
			drawFlatRoof();
		}
		r.move(height);
		r.turn(-90);
		r.setPenColor(Color.green);
		r.move(30);
		r.turn(-90);

	}
	void drawHouse(String height) {
		if( height.equals("small")) {

			drawHouse (60);

		}
		if (height.equals("medium")) {

			drawHouse(120);


		}
		if (height.equals("large")) {

			drawHouse(250);


		}

	}
	void drawHouse(String height, Color mycolor) {


		r.setPenColor (mycolor);

		if( height.equals("small")) {

			drawHouse (60);

		}
		if (height.equals("medium")) {

			drawHouse(120);


		}
		if (height.equals("large")) {

			drawHouse(250);


		}

	}

	void drawPointyRoof() {
		r.turn(45);
		r.move(50);
		r.turn(90);
		r.move(50);
		r.turn(45);
	}

	void drawFlatRoof() {
		r.turn(90);
		r.move(50);
		r.turn(90);

	}

}

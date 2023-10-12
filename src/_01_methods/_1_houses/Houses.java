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

		r.setSpeed(15);
		r.moveTo(10, 545);
		r.penDown();
		Random ran = new Random();
		for(int i=0; i<10; i++) {
			drawHouse(  75+ran.nextInt(200)    );
			
		} 
		


	}
	void drawHouse(int height) {

		r.setPenColor(Color.PINK);
		r.move(height);
		r.turn(90);
		r.move(50);
		r.turn(90);		
		r.move(height);
		r.turn(-90);
		r.setPenColor(Color.green);
		r.move(30);
		r.turn(-90);

	}
}

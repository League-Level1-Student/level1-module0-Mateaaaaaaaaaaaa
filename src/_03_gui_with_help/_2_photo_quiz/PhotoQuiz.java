package _03_gui_with_help._2_photo_quiz;
/*
 *    Copyright (c) The League of Amazing Programmers 2013-2021
 *    Level 1
 */

import java.awt.Component;
import java.net.MalformedURLException;
import java.net.URL;

import javax.swing.Icon;
import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;

public class PhotoQuiz {

	public void run() {
		int score= 0;
		JFrame quizWindow = new JFrame();
		quizWindow.setVisible(true);
		// This will make sure the program exits when you close the window
		quizWindow.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

		// 1. find an image on the internet, and put its URL in a String
		// variable (from your browser, right click on the image, and select
		// “Copy Image Address” )
		String raclette = "https://static.actu.fr/uploads/2019/12/5517170706-711aa6ed85-o-960x640.jpg";
		// 2. create a variable of type "Component" that will hold your image
		Component holdraclette;
		// 3. use the "createImage()" method below to initialize your Component
		holdraclette= createImage(raclette);
		// 4. add the image to the quiz window
		quizWindow.add(holdraclette);
		// 5. call the pack() method on the quiz window
		quizWindow.pack();
		// 6. ask a question that relates to the image
		String question = JOptionPane.showInputDialog(null,"Which cheese do you pick for your raclette ?");
		// 7. print "CORRECT" if the user gave the right answer
		if (question.equals("fromage de brebis"))  {
			System.out.println("CORRECT");
			score=+1;
		}else{
			// 8. print "INCORRECT" if the answer is wrong

			System.out.println("INCORRECT");
			score=-1;
		}
		// 9. remove the component from the quiz window (you may not see the
		// effect of this until step 12)
		quizWindow.remove(holdraclette);
		// 10. find another image and create it (might take more than one line
		// of code)
		String croissant = "https://fac.img.pmdstatic.net/fit/http.3A.2F.2Fprd2-bone-image.2Es3-website-eu-west-1.2Eamazonaws.2Ecom.2Ffac.2F2020.2F01.2F14.2Fcadd477b-f9cf-4dab-8601-5f51199c29ae.2Ejpeg/970x485/quality/80/crop-from/center/le-croissant-est-il-ne-en-france.jpeg";
		Component holdcroissant;
		holdcroissant= createImage(croissant);
		// 11. add the second image to the quiz window
		quizWindow.add(holdcroissant);
		// 12. pack the quiz window
		quizWindow.pack();
		// 13. ask another question
		String questioncroissant = JOptionPane.showInputDialog(null,"Do you like croissant?");
		// 14+ check answer, say if correct or incorrect, etc.

		if (questioncroissant.equals("oui"))  {
			System.out.println("CORRECT");
			score=+1;
		}else{

			System.out.println("INCORRECT");
			score=-1;
			
		}
		JOptionPane.showMessageDialog(null,"Your score is  "+ score);
	}

	private Component createImage(String imageUrl) {
		JLabel imageLabel = new JLabel();
		URL url;
		try {
			url = new URL(imageUrl);
			Icon icon = new ImageIcon(url);
			imageLabel.setIcon(icon);
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			JOptionPane.showMessageDialog(null, "I can't find your image!!");
			
		}
		
		return imageLabel;
	}

	/* OPTIONAL */
	// *14. add scoring to your quiz
	// *15. make something happen when mouse enters image
	// (imageComponent.addMouseMotionListener())
}

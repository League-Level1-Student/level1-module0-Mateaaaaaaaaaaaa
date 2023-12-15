package _04_gui_from_scratch._1_fortune_cookie;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.Random;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JOptionPane;

public class FortuneCookie implements ActionListener {
	public void showButton() {

		JFrame frame = new JFrame();
		JButton button = new JButton("click here ");
		frame.add(button);
		frame.pack();

		button.addActionListener(this);

		frame.setVisible(true);


	}

	@Override
	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub

		JOptionPane.showMessageDialog(null, "woohoo");

		int rand = new Random().nextInt(5);
		if (rand==0) {    JOptionPane.showMessageDialog(null,("You love peace."));

		}

		if (rand==1) {    JOptionPane.showMessageDialog(null,("You are kind and friendly."));

		}

		if (rand==2) {    JOptionPane.showMessageDialog(null,("You will receive money from an unexpected source."));

		}

		if (rand==3) {    JOptionPane.showMessageDialog(null,("Stay healthy. Walk a mile."));

		}
		
		if (rand==4) {    JOptionPane.showMessageDialog(null,("Eat chocolate to have a sweeter life."));
		
		}
		if (rand==5) {    JOptionPane.showMessageDialog(null,("Sell your ideas-they have exceptional merit"));
		
			
		}
	}
}
package seguimiento_02;

import javax.swing.JOptionPane;

public class Mensaje_2 {
    public static void main(String[] args) {
        if (args.length > 0 && args[0].equals("empleado")) {
        
            String nombre = JOptionPane.showInputDialog("Ingrese su nombre: ");
            String horas = JOptionPane.showInputDialog("Ingrese sus horas trabajadas: ");
            String valor_hora = JOptionPane.showInputDialog("Ingrese el valor por hora: ");

            System.out.println(nombre + "," + horas + "," + valor_hora);
        }else if (args.length > 0) {

            JOptionPane.showMessageDialog(null, args[0]);
        } else {
            
            JOptionPane.showMessageDialog(null, "No message provided.");
        }            
    }
    
}

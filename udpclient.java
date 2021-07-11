import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.util.Scanner;
import java.util.Scanner;
public class udpclient
{
	public static void main(String args[]) throws IOException
	{
	Scanner sc=new Scanner(System.in);
	DatagramSocket ds=new DatagramSocket();
	InetAddress ia=InetAddress.getLocalHost();
	byte buffer[]=null;
	while(true)
	{
	String str=sc.nextLine();
	buffer=str.getBytes();
	DatagramPacket DpSend=new DatagramPacket(buffer,buffer.length,ia,1234);
	ds.send(DpSend);
	if(str.equals("bye"))
	break;
	}
	}
}
	

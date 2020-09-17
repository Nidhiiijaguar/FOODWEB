package Pos_Neg;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.sql.*;
import java.util.LinkedList;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author DLK-E1
 */
public class SVM 
{
	public String classify(String reviews,Connection con)
    {
        String result="";
        try
        {
            String ReviewsTemp=""; 
            String Reviews=reviews;
            int poss=0,neg=0;

            //Preprocessing work//
            //Remove Stop_words
            Stopwords Stop_remove = new Stopwords();
            ReviewsTemp=Stop_remove.words(Reviews);
            //Remove Stemming
            Stem Stemp_Remove = new Stem();
            ReviewsTemp=Stemp_Remove.stem(ReviewsTemp);
            String word[]=ReviewsTemp.split(" ");

            //Storing All Dataset in Collection Objects.
            LinkedList Positive=new LinkedList();
            LinkedList Negative=new LinkedList();

            for(String find:word)
            {
                PreparedStatement a=con.prepareStatement("select * from positive where gud='"+find+"' ");
                ResultSet b=a.executeQuery();
                if(b.next())
                {
                    Positive.add(b.getString("gud"));
                }
                PreparedStatement c=con.prepareStatement("select * from negative where neg='"+find+"' ");
                ResultSet d=c.executeQuery();
                if(d.next())
                {
                    Negative.add(d.getString("neg"));
                }
            }

            //Checking word level filtering method in review Sentences

            for(String Filter:word)
            {
                //Positive words checking
                if(Positive.contains(Filter))
                {
                    poss=1;
                }
                //Negative words checking
                if(Negative.contains(Filter))
                {
                    neg=1;
                }
            }
            boolean P=false,N=false,Nt=false,G=false;
            //Assign boolean value of Positive Reviews
            if(poss==1&&neg==0)
            {
                P=true;
            }
            //Assign boolean value of Negative Reviews
            else if(neg==1&&poss==0)
            {
                N=true;
            }
            //Assign boolean value of Nuetral Reviews
            else if(poss==1&&neg==1)
            {
                Nt=true;
            }
            else
            {
                G=true;
            }
            //Inserting Positive Reviews
            if(P)
            {
                result="Positive";
            }
            //Inserting Negative Reviews
            else if(N)
            {
                result="Negative";
            }
            //Inserting Nuetral Reviews
            else if(Nt)
            {
               result="Neutral";
            }
            else
            {
                result="General";
            }
        }
        catch(Exception ex)
        {
            System.out.println(ex);
        }
        return result;
    }
    public static void main(String args[])
    {
        try 
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/food", "root", "root");
            SVM ss = new SVM();
            String result=ss.classify("this is bad good product", con);
            System.out.println(result);
        }
        catch (ClassNotFoundException | SQLException ex) 
        {
            System.out.println(ex);
        }
    }
}
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.base.DAO;
import com.base.models.Students;
import com.base.util.HibernateUtil;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Ohjelmistokehitys
 */
public class StudentDAO {
/**
     * This method adds new teacher into database
     * @param study
     * @throws java.lang.Exception
     */
    public static void addStudent(Students study) throws Exception{
        
        //Create session to our database
        Session session;
        session = HibernateUtil.getSessionFactory().openSession();
        //Because we are writing to database we need transaction besides session
        Transaction transaction = session.beginTransaction();
       
        session.save(study); 
        //End transaction
        transaction.commit();
        
        //Release session
        session.close();
    }
    
    public static List<Students> getStudents() throws Exception{

        Session session = HibernateUtil.getSessionFactory().openSession();
        
        //Use hql query language here, NOT SQL!!!
        //Query query = session.createQuery("from Students"); //Tässä viitataan tauluukkoon, joka luotu luokasta
        //Make the quiry to database
        Criteria criteria = session.createCriteria(Students.class);
        
        List<Students> std = criteria.list();
        //List<Students> lst = query.list();
        session.close();
        //Return list of students
        return std;

    
    }    
}

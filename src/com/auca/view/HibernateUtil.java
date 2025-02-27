package com.auca.view;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.cfg.Environment;
import org.hibernate.service.ServiceRegistry;

import com.auca.domain.AcademicUnit;
import com.auca.domain.Course;
import com.auca.domain.CourseDefinition;
import com.auca.domain.Semester;
import com.auca.domain.Student;
import com.auca.domain.StudentCourse;
import com.auca.domain.StudentRegistration;
import com.auca.domain.Users;
import com.auca.domain.Teacher;

import java.util.Properties;

public class HibernateUtil {

    private static SessionFactory sessionFactory;

    public static SessionFactory getSession() {
        try {
            Configuration configuration = new Configuration();

            Properties settings = new Properties();
            settings.put("hibernate.connection.driver_class", "com.mysql.cj.jdbc.Driver");
            settings.put("hibernate.connection.url", "jdbc:mysql://localhost:3306/webtech?createDatabaseIfNotExist=true");
            settings.put("hibernate.connection.username", "root");
            settings.put("hibernate.connection.password", "");
            settings.put(Environment.DIALECT, "org.hibernate.dialect.MySQL8Dialect");

            settings.put(Environment.SHOW_SQL, "true");
            settings.put(Environment.CURRENT_SESSION_CONTEXT_CLASS, "thread");
            settings.put(Environment.HBM2DDL_AUTO, "update");

            configuration.setProperties(settings);
            configuration.addAnnotatedClass(Users.class);
            configuration.addAnnotatedClass(Teacher.class);
            configuration.addAnnotatedClass(CourseDefinition.class);
            configuration.addAnnotatedClass(Semester.class);
            configuration.addAnnotatedClass(Student.class);
            configuration.addAnnotatedClass(AcademicUnit.class);
            configuration.addAnnotatedClass(Course.class);
            configuration.addAnnotatedClass(StudentRegistration.class);
            configuration.addAnnotatedClass(StudentCourse.class);

            ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder()
                    .applySettings(configuration.getProperties()).build();
            System.out.println("Hibernate Java Config serviceRegistry created");
            sessionFactory = configuration.buildSessionFactory(serviceRegistry);
            return sessionFactory;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return sessionFactory;
    }
}

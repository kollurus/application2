package com.niit.config;


import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.DAO.CartDAO;
import com.niit.DAO.CartDAOimpl;
import com.niit.DAO.CategoryDAO;
import com.niit.DAO.CategoryDAOimpl;
import com.niit.DAO.ProductDAO;
import com.niit.DAO.ProductDAOimpl;
import com.niit.DAO.SupplierDAO;
import com.niit.DAO.SupplierDAOimpl;
import com.niit.DAO.UserDetailsDAO;
import com.niit.DAO.UserDetailsDAOImpl;
import com.niit.model.Cart;
import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.model.Supplier;
import com.niit.model.UserDetails;


	
	@Configuration
	@ComponentScan ("com.niit")
	@EnableTransactionManagement
	public class ApplicationContextConfig {
		
		@Bean(name = "dataSource")
		public DataSource getDataSource(){
			DriverManagerDataSource dataSource = new DriverManagerDataSource();
			dataSource.setDriverClassName("org.h2.Driver");
			dataSource.setUrl("jdbc:h2:~/project");
			dataSource.setUsername("sa");
			dataSource.setPassword("sa");
			return dataSource;
		}
		private Properties getHibernateProperties(){
			Properties properties = new Properties();
			properties.put("hibernate.show_sql", "true");
			properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
			return properties;
		}
		@SuppressWarnings("deprecation")
		@Autowired
		@Bean(name="sessionFactory")
		public SessionFactory getSessionFactory (DataSource h2dataSource){
			LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(h2dataSource);
			sessionBuilder.addProperties(getHibernateProperties());
			sessionBuilder.addAnnotatedClass(Category.class);
			sessionBuilder.addAnnotatedClass(Supplier.class);
			sessionBuilder.addAnnotatedClass(Product.class);
			sessionBuilder.addAnnotatedClass(UserDetails.class);
			sessionBuilder.addAnnotatedClass(Cart.class);
			System.out.println("session");
			return sessionBuilder.buildSessionFactory();
		}
	
		@SuppressWarnings("deprecation")
		@Autowired
		@Bean(name = "transactionManager")
		public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory){
			HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);
			return transactionManager;
			
		}
		@Autowired
		@Bean(name ="categoryDAO")
		public CategoryDAO getCategoryDAO(SessionFactory sessionFactory){
		return new CategoryDAOimpl(sessionFactory);
	}
		@Autowired
		@Bean(name ="productDAO")
		public ProductDAO getProductDAO(SessionFactory sessionFactory){
		return new ProductDAOimpl(sessionFactory);
	}
		@Autowired
		@Bean(name ="supplierDAO")
		public SupplierDAO getSupplierDAO(SessionFactory sessionFactory){
		return new SupplierDAOimpl(sessionFactory);
	}
		@Autowired
		@Bean(name ="userDAO")
		public UserDetailsDAO getUserDAO(SessionFactory sessionFactory){
		return new UserDetailsDAOImpl(sessionFactory);
	}
		@Autowired
		@Bean(name ="cartDAO")
		public CartDAO getCartDAO(SessionFactory sessionFactory){
		return new CartDAOimpl(sessionFactory);
	}
}

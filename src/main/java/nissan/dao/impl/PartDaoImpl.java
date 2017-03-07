package nissan.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import nissan.dao.PartDao;
import nissan.model.Part;

@Repository
public class PartDaoImpl implements PartDao {

	
	@Autowired
	private SessionFactory sessionFactory;
	
	public List<Part> getPartsList() {
		Session session = sessionFactory.getCurrentSession();
		Query query = (Query) session.createQuery("from Part order by name");
		List<Part> partsList = query.list();
		session.flush();
		return partsList;
	}
	

	public Part getPartsById(int partId) {
		Session session = sessionFactory.getCurrentSession();
		Part part = (Part) session.get(Part.class, partId);
		session.flush();
		return part;
	}

	public void addParts(Part part) {
		Session session = sessionFactory.getCurrentSession();
		List<Part> parts = new ArrayList<Part>();
		parts.add(part);
		part.getDepartment().setParts(parts);
		session.saveOrUpdate(part);
		session.saveOrUpdate(part.getDepartment());
		session.flush();
		
	}

	public void editParts(Part part) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(part);
		session.flush();
		
	}

	public void deleteParts(Part part) {
		Session session = sessionFactory.getCurrentSession();
		session.delete(part);
		session.flush();
	}

}
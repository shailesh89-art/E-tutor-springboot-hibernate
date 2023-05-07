package com.example.demo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

import org.springframework.lang.NonNull;

@Entity
public class add_book {
	
	@Id
	  @GeneratedValue(strategy = GenerationType.AUTO)
	    @Column(name = "ebook_id")
	    private int id;

	    @Column(name = "ebook_name")
	    private String bname;

	    @Column(name = "publisher_name")
	    private String aname;

	    
	    @Column(name = "description")
	    private String bdesc;

	    @Transient
	    @Column(name = "file_url")
	    private String url;

	    @NonNull
	    private String filename;

		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getBname() {
			return bname;
		}

		public void setBname(String bname) {
			this.bname = bname;
		}

		public String getAname() {
			return aname;
		}

		public void setAname(String aname) {
			this.aname = aname;
		}

		public String getBdesc() {
			return bdesc;
		}

		public void setBdesc(String bdesc) {
			this.bdesc = bdesc;
		}

		public String getUrl() {
			return url;
		}

		public void setUrl(String url) {
			this.url = url;
		}

		public String getFilename() {
			return filename;
		}

		public void setFilename(String filename) {
			this.filename = filename;
		}

		@Override
		public String toString() {
			return "add_book [id=" + id + ", bname=" + bname + ", aname=" + aname + ", bdesc=" + bdesc + ", url=" + url
					+ ", filename=" + filename + "]";
		}

}

package entity;
// Generated May 22, 2017 7:24:23 PM by Hibernate Tools 5.2.3.Final

/**
 * ChapterContent generated by hbm2java
 */
public class ChapterContent implements java.io.Serializable {

	private static final long serialVersionUID = -5869521401791697452L;
	private ChapterContentId id;
	private Chapter chapter;
	private String content;

	public ChapterContent() {
	}

	public ChapterContent(ChapterContentId id, Chapter chapter) {
		this.id = id;
		this.chapter = chapter;
	}

	public ChapterContent(ChapterContentId id, Chapter chapter, String content) {
		this.id = id;
		this.chapter = chapter;
		this.content = content;
	}

	public ChapterContentId getId() {
		return id;
	}

	public void setId(ChapterContentId id) {
		this.id = id;
	}

	public Chapter getChapter() {
		return chapter;
	}

	public void setChapter(Chapter chapter) {
		this.chapter = chapter;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

}

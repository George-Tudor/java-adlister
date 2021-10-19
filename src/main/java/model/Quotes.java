package model;

import java.io.Serializable;

public class Quotes implements Serializable {
    private long id;
    private String authorFirstname;
    private String authorLastname;
    private String content;

    public Quotes() {
    }

    public Quotes(long id, String authorFirstname, String authorLastname, String content) {
        this.id = id;
        this.authorFirstname = authorFirstname;
        this.authorLastname = authorLastname;
        this.content = content;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getAuthorFirstname() {
        return authorFirstname;
    }

    public void setAuthorFirstname(String authorFirstname) {
        this.authorFirstname = authorFirstname;
    }

    public String getAuthorLastname() {
        return authorLastname;
    }

    public void setAuthorLastname(String authorLastname) {
        this.authorLastname = authorLastname;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return "Quotes{" +
                "id=" + id +
                ", authorFirstname='" + authorFirstname + '\'' +
                ", authorLastname='" + authorLastname + '\'' +
                ", content='" + content + '\'' +
                '}';
    }
}


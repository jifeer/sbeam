package com.lumr.sbeam.vo;

/**
 * 游戏图片
 * Created by lumr on 2017/5/8.
 */
public class Picture {
    private int id;
    private Game game;
    private String fileName;
    private String src;

    public Picture() {
    }

    public Picture(Game game, String fileName, String src) {
        this.game = game;
        this.fileName = fileName;
        this.src = src;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Game getGame() {
        return game;
    }

    public void setGame(Game game) {
        this.game = game;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public String getSrc() {
        return src;
    }

    public void setSrc(String src) {
        this.src = src;
    }
}